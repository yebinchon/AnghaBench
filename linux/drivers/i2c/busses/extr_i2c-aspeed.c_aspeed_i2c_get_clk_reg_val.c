
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int ASPEED_I2CD_TIME_BASE_DIVISOR_MASK ;
 int ASPEED_I2CD_TIME_SCL_HIGH_MASK ;
 int ASPEED_I2CD_TIME_SCL_HIGH_SHIFT ;
 int ASPEED_I2CD_TIME_SCL_LOW_MASK ;
 int ASPEED_I2CD_TIME_SCL_LOW_SHIFT ;
 int dev_err (struct device*,char*,int,int) ;
 int ilog2 (int) ;

__attribute__((used)) static u32 aspeed_i2c_get_clk_reg_val(struct device *dev,
          u32 clk_high_low_mask,
          u32 divisor)
{
 u32 base_clk_divisor, clk_high_low_max, clk_high, clk_low, tmp;
 clk_high_low_max = (clk_high_low_mask + 1) * 2;
 base_clk_divisor = divisor > clk_high_low_max ?
   ilog2((divisor - 1) / clk_high_low_max) + 1 : 0;

 if (base_clk_divisor > ASPEED_I2CD_TIME_BASE_DIVISOR_MASK) {
  base_clk_divisor = ASPEED_I2CD_TIME_BASE_DIVISOR_MASK;
  clk_low = clk_high_low_mask;
  clk_high = clk_high_low_mask;
  dev_err(dev,
   "clamping clock divider: divider requested, %u, is greater than largest possible divider, %u.\n",
   divisor, (1 << base_clk_divisor) * clk_high_low_max);
 } else {
  tmp = (divisor + (1 << base_clk_divisor) - 1)
    >> base_clk_divisor;
  clk_low = tmp / 2;
  clk_high = tmp - clk_low;

  if (clk_high)
   clk_high--;

  if (clk_low)
   clk_low--;
 }


 return ((clk_high << ASPEED_I2CD_TIME_SCL_HIGH_SHIFT)
  & ASPEED_I2CD_TIME_SCL_HIGH_MASK)
   | ((clk_low << ASPEED_I2CD_TIME_SCL_LOW_SHIFT)
      & ASPEED_I2CD_TIME_SCL_LOW_MASK)
   | (base_clk_divisor
      & ASPEED_I2CD_TIME_BASE_DIVISOR_MASK);
}
