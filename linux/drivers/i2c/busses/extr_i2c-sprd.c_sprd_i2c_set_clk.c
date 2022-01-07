
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_i2c {int src_clk; scalar_t__ base; } ;


 scalar_t__ ADDR_DVD0 ;
 scalar_t__ ADDR_DVD1 ;
 scalar_t__ ADDR_STA0_DVD ;
 int I2C_ADDR_DVD0_CALC (int,int) ;
 int I2C_ADDR_DVD1_CALC (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sprd_i2c_set_clk(struct sprd_i2c *i2c_dev, u32 freq)
{
 u32 apb_clk = i2c_dev->src_clk;




 u32 i2c_dvd = apb_clk / (4 * freq) - 1;







 u32 high = ((i2c_dvd << 1) * 2) / 5;
 u32 low = ((i2c_dvd << 1) * 3) / 5;
 u32 div0 = I2C_ADDR_DVD0_CALC(high, low);
 u32 div1 = I2C_ADDR_DVD1_CALC(high, low);

 writel(div0, i2c_dev->base + ADDR_DVD0);
 writel(div1, i2c_dev->base + ADDR_DVD1);


 if (freq == 400000)
  writel((6 * apb_clk) / 10000000, i2c_dev->base + ADDR_STA0_DVD);
 else if (freq == 100000)
  writel((4 * apb_clk) / 1000000, i2c_dev->base + ADDR_STA0_DVD);
}
