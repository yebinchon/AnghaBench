
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altr_i2c_dev {int bus_clk_rate; scalar_t__ base; int dev; int i2c_clk; } ;


 int ALTR_I2C_ALL_IRQ ;
 scalar_t__ ALTR_I2C_CTRL ;
 int ALTR_I2C_CTRL_BSPEED ;
 int ALTR_I2C_CTRL_RXT_SHFT ;
 int ALTR_I2C_CTRL_TCT_SHFT ;
 scalar_t__ ALTR_I2C_SCL_HIGH ;
 scalar_t__ ALTR_I2C_SCL_LOW ;
 scalar_t__ ALTR_I2C_SDA_HOLD ;
 int ALTR_I2C_THRESHOLD ;
 int altr_i2c_int_enable (struct altr_i2c_dev*,int ,int) ;
 int altr_i2c_reset (struct altr_i2c_dev*) ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int,int,int) ;
 int div_u64 (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void altr_i2c_init(struct altr_i2c_dev *idev)
{
 u32 divisor = clk_get_rate(idev->i2c_clk) / idev->bus_clk_rate;
 u32 clk_mhz = clk_get_rate(idev->i2c_clk) / 1000000;
 u32 tmp = (ALTR_I2C_THRESHOLD << ALTR_I2C_CTRL_RXT_SHFT) |
    (ALTR_I2C_THRESHOLD << ALTR_I2C_CTRL_TCT_SHFT);
 u32 t_high, t_low;

 if (idev->bus_clk_rate <= 100000) {
  tmp &= ~ALTR_I2C_CTRL_BSPEED;

  t_high = divisor * 1 / 2;
  t_low = divisor * 1 / 2;
 } else {
  tmp |= ALTR_I2C_CTRL_BSPEED;

  t_high = divisor * 1 / 3;
  t_low = divisor * 2 / 3;
 }
 writel(tmp, idev->base + ALTR_I2C_CTRL);

 dev_dbg(idev->dev, "rate=%uHz per_clk=%uMHz -> ratio=1:%u\n",
  idev->bus_clk_rate, clk_mhz, divisor);


 altr_i2c_reset(idev);


 writel(t_high, idev->base + ALTR_I2C_SCL_HIGH);

 writel(t_low, idev->base + ALTR_I2C_SCL_LOW);

 writel(div_u64(300 * clk_mhz, 1000), idev->base + ALTR_I2C_SDA_HOLD);


 altr_i2c_int_enable(idev, ALTR_I2C_ALL_IRQ, 0);
}
