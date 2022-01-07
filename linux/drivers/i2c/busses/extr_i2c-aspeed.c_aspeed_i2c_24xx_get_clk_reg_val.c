
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int GENMASK (int,int ) ;
 int aspeed_i2c_get_clk_reg_val (struct device*,int ,int ) ;

__attribute__((used)) static u32 aspeed_i2c_24xx_get_clk_reg_val(struct device *dev, u32 divisor)
{




 return aspeed_i2c_get_clk_reg_val(dev, GENMASK(2, 0), divisor);
}
