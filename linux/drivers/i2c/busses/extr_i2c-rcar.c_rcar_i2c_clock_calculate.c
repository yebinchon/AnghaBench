
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct rcar_i2c_priv {int devtype; unsigned int icccr; int clk; } ;
struct i2c_timings {int bus_freq_hz; int scl_fall_ns; int scl_rise_ns; int scl_int_delay_ns; } ;
struct device {int dummy; } ;


 int EIO ;



 unsigned long clk_get_rate (int ) ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,unsigned long,unsigned int,unsigned int,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 struct device* rcar_i2c_priv_to_dev (struct rcar_i2c_priv*) ;

__attribute__((used)) static int rcar_i2c_clock_calculate(struct rcar_i2c_priv *priv, struct i2c_timings *t)
{
 u32 scgd, cdf, round, ick, sum, scl, cdf_width;
 unsigned long rate;
 struct device *dev = rcar_i2c_priv_to_dev(priv);


 t->bus_freq_hz = t->bus_freq_hz ?: 100000;
 t->scl_fall_ns = t->scl_fall_ns ?: 35;
 t->scl_rise_ns = t->scl_rise_ns ?: 200;
 t->scl_int_delay_ns = t->scl_int_delay_ns ?: 50;

 switch (priv->devtype) {
 case 130:
  cdf_width = 2;
  break;
 case 129:
 case 128:
  cdf_width = 3;
  break;
 default:
  dev_err(dev, "device type error\n");
  return -EIO;
 }
 rate = clk_get_rate(priv->clk);
 cdf = rate / 20000000;
 if (cdf >= 1U << cdf_width) {
  dev_err(dev, "Input clock %lu too high\n", rate);
  return -EIO;
 }
 ick = rate / (cdf + 1);
 sum = t->scl_fall_ns + t->scl_rise_ns + t->scl_int_delay_ns;
 round = (ick + 500000) / 1000000 * sum;
 round = (round + 500) / 1000;
 for (scgd = 0; scgd < 0x40; scgd++) {
  scl = ick / (20 + (scgd * 8) + round);
  if (scl <= t->bus_freq_hz)
   goto scgd_find;
 }
 dev_err(dev, "it is impossible to calculate best SCL\n");
 return -EIO;

scgd_find:
 dev_dbg(dev, "clk %d/%d(%lu), round %u, CDF:0x%x, SCGD: 0x%x\n",
  scl, t->bus_freq_hz, clk_get_rate(priv->clk), round, cdf, scgd);


 priv->icccr = scgd << cdf_width | cdf;

 return 0;
}
