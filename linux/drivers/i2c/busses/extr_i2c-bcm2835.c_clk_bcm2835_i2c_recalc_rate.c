
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_hw {int dummy; } ;
struct clk_bcm2835_i2c {int i2c_dev; } ;


 int BCM2835_I2C_DIV ;
 unsigned long DIV_ROUND_UP (unsigned long,int ) ;
 int bcm2835_i2c_readl (int ,int ) ;
 struct clk_bcm2835_i2c* to_clk_bcm2835_i2c (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_bcm2835_i2c_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_bcm2835_i2c *div = to_clk_bcm2835_i2c(hw);
 u32 divider = bcm2835_i2c_readl(div->i2c_dev, BCM2835_I2C_DIV);

 return DIV_ROUND_UP(parent_rate, divider);
}
