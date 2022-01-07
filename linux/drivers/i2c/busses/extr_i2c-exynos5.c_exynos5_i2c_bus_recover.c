
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct exynos5_i2c {scalar_t__ regs; } ;


 int HSI2C_AUTO_MODE ;
 int HSI2C_CMD_READ_DATA ;
 int HSI2C_CMD_SEND_STOP ;
 scalar_t__ HSI2C_CONF ;
 scalar_t__ HSI2C_CTL ;
 scalar_t__ HSI2C_MANUAL_CMD ;
 int HSI2C_RXCHON ;
 int exynos5_i2c_wait_bus_idle (struct exynos5_i2c*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void exynos5_i2c_bus_recover(struct exynos5_i2c *i2c)
{
 u32 val;

 val = readl(i2c->regs + HSI2C_CTL) | HSI2C_RXCHON;
 writel(val, i2c->regs + HSI2C_CTL);
 val = readl(i2c->regs + HSI2C_CONF) & ~HSI2C_AUTO_MODE;
 writel(val, i2c->regs + HSI2C_CONF);






 writel(HSI2C_CMD_READ_DATA, i2c->regs + HSI2C_MANUAL_CMD);
 exynos5_i2c_wait_bus_idle(i2c);
 writel(HSI2C_CMD_SEND_STOP, i2c->regs + HSI2C_MANUAL_CMD);
 exynos5_i2c_wait_bus_idle(i2c);

 val = readl(i2c->regs + HSI2C_CTL) & ~HSI2C_RXCHON;
 writel(val, i2c->regs + HSI2C_CTL);
 val = readl(i2c->regs + HSI2C_CONF) | HSI2C_AUTO_MODE;
 writel(val, i2c->regs + HSI2C_CONF);
}
