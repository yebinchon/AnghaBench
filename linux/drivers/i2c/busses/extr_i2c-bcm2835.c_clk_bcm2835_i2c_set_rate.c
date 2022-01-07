
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_bcm2835_i2c {int i2c_dev; } ;


 int BCM2835_I2C_DEL ;
 int BCM2835_I2C_DIV ;
 int BCM2835_I2C_FEDL_SHIFT ;
 int BCM2835_I2C_REDL_SHIFT ;
 int EINVAL ;
 int bcm2835_i2c_writel (int ,int ,int) ;
 int clk_bcm2835_i2c_calc_divider (unsigned long,unsigned long) ;
 int max (int,unsigned int) ;
 struct clk_bcm2835_i2c* to_clk_bcm2835_i2c (struct clk_hw*) ;

__attribute__((used)) static int clk_bcm2835_i2c_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
 u32 redl, fedl;
 u32 divider = clk_bcm2835_i2c_calc_divider(rate, parent_rate);

 if (divider == -EINVAL)
  return -EINVAL;

 bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DIV, divider);






 fedl = max(divider / 16, 1u);





 redl = max(divider / 4, 1u);

 bcm2835_i2c_writel(div->i2c_dev, BCM2835_I2C_DEL,
      (fedl << BCM2835_I2C_FEDL_SHIFT) |
      (redl << BCM2835_I2C_REDL_SHIFT));
 return 0;
}
