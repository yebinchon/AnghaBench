
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos5_i2c {scalar_t__ regs; } ;


 scalar_t__ HSI2C_INT_STATUS ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void exynos5_i2c_clr_pend_irq(struct exynos5_i2c *i2c)
{
 writel(readl(i2c->regs + HSI2C_INT_STATUS),
    i2c->regs + HSI2C_INT_STATUS);
}
