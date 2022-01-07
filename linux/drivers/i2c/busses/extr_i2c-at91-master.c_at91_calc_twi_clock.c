
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_timings {int bus_freq_hz; int sda_hold_ns; } ;
struct at91_twi_pdata {int clk_offset; int clk_max_div; scalar_t__ has_hold_field; } ;
struct at91_twi_dev {int twi_cwgr_reg; int dev; int clk; struct at91_twi_pdata* pdata; } ;


 int AT91_TWI_CWGR_HOLD (int) ;
 int AT91_TWI_CWGR_HOLD_MAX ;
 int DIV_ROUND_UP (int,int) ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int,int,int,int) ;
 int dev_warn (int ,char*,int,int) ;
 int fls (int) ;
 int i2c_parse_fw_timings (int ,struct i2c_timings*,int) ;
 int max (int ,int) ;

__attribute__((used)) static void at91_calc_twi_clock(struct at91_twi_dev *dev)
{
 int ckdiv, cdiv, div, hold = 0;
 struct at91_twi_pdata *pdata = dev->pdata;
 int offset = pdata->clk_offset;
 int max_ckdiv = pdata->clk_max_div;
 struct i2c_timings timings, *t = &timings;

 i2c_parse_fw_timings(dev->dev, t, 1);

 div = max(0, (int)DIV_ROUND_UP(clk_get_rate(dev->clk),
           2 * t->bus_freq_hz) - offset);
 ckdiv = fls(div >> 8);
 cdiv = div >> ckdiv;

 if (ckdiv > max_ckdiv) {
  dev_warn(dev->dev, "%d exceeds ckdiv max value which is %d.\n",
    ckdiv, max_ckdiv);
  ckdiv = max_ckdiv;
  cdiv = 255;
 }

 if (pdata->has_hold_field) {





  hold = DIV_ROUND_UP(t->sda_hold_ns
        * (clk_get_rate(dev->clk) / 1000), 1000000);
  hold -= 3;
  if (hold < 0)
   hold = 0;
  if (hold > AT91_TWI_CWGR_HOLD_MAX) {
   dev_warn(dev->dev,
     "HOLD field set to its maximum value (%d instead of %d)\n",
     AT91_TWI_CWGR_HOLD_MAX, hold);
   hold = AT91_TWI_CWGR_HOLD_MAX;
  }
 }

 dev->twi_cwgr_reg = (ckdiv << 16) | (cdiv << 8) | cdiv
       | AT91_TWI_CWGR_HOLD(hold);

 dev_dbg(dev->dev, "cdiv %d ckdiv %d hold %d (%d ns)\n",
  cdiv, ckdiv, hold, t->sda_hold_ns);
}
