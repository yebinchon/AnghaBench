
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos5_i2c {scalar_t__ regs; } ;


 scalar_t__ HSI2C_CTL ;
 int HSI2C_SW_RST ;
 int exynos5_hsi2c_clock_setup (struct exynos5_i2c*) ;
 int exynos5_i2c_init (struct exynos5_i2c*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void exynos5_i2c_reset(struct exynos5_i2c *i2c)
{
 u32 i2c_ctl;


 i2c_ctl = readl(i2c->regs + HSI2C_CTL);
 i2c_ctl |= HSI2C_SW_RST;
 writel(i2c_ctl, i2c->regs + HSI2C_CTL);

 i2c_ctl = readl(i2c->regs + HSI2C_CTL);
 i2c_ctl &= ~HSI2C_SW_RST;
 writel(i2c_ctl, i2c->regs + HSI2C_CTL);


 exynos5_hsi2c_clock_setup(i2c);

 exynos5_i2c_init(i2c);
}
