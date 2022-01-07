
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int t_halt; } ;


 int SCB_CONTROL_CLK_ENABLE ;
 int SCB_CONTROL_REG ;
 int SCB_CONTROL_SOFT_RESET ;
 int img_i2c_writel (struct img_i2c*,int ,int) ;

__attribute__((used)) static void img_i2c_soft_reset(struct img_i2c *i2c)
{
 i2c->t_halt = 0;
 img_i2c_writel(i2c, SCB_CONTROL_REG, 0);
 img_i2c_writel(i2c, SCB_CONTROL_REG,
         SCB_CONTROL_CLK_ENABLE | SCB_CONTROL_SOFT_RESET);
}
