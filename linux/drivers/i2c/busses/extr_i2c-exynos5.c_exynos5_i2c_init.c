
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int nr; } ;
struct exynos5_i2c {scalar_t__ op_clock; scalar_t__ regs; TYPE_1__ adap; } ;


 scalar_t__ HSI2C_ADDR ;
 int HSI2C_AUTO_MODE ;
 scalar_t__ HSI2C_CONF ;
 scalar_t__ HSI2C_CTL ;
 int HSI2C_FUNC_MODE_I2C ;
 int HSI2C_HS_MODE ;
 scalar_t__ HSI2C_HS_TX_CLOCK ;
 int HSI2C_MASTER ;
 int HSI2C_MASTER_ID (int ) ;
 scalar_t__ HSI2C_TIMEOUT ;
 int HSI2C_TIMEOUT_EN ;
 scalar_t__ HSI2C_TRAILIG_CTL ;
 int HSI2C_TRAILING_COUNT ;
 int MASTER_ID (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void exynos5_i2c_init(struct exynos5_i2c *i2c)
{
 u32 i2c_conf = readl(i2c->regs + HSI2C_CONF);
 u32 i2c_timeout = readl(i2c->regs + HSI2C_TIMEOUT);


 i2c_timeout &= ~HSI2C_TIMEOUT_EN;
 writel(i2c_timeout, i2c->regs + HSI2C_TIMEOUT);

 writel((HSI2C_FUNC_MODE_I2C | HSI2C_MASTER),
     i2c->regs + HSI2C_CTL);
 writel(HSI2C_TRAILING_COUNT, i2c->regs + HSI2C_TRAILIG_CTL);

 if (i2c->op_clock >= HSI2C_HS_TX_CLOCK) {
  writel(HSI2C_MASTER_ID(MASTER_ID(i2c->adap.nr)),
     i2c->regs + HSI2C_ADDR);
  i2c_conf |= HSI2C_HS_MODE;
 }

 writel(i2c_conf | HSI2C_AUTO_MODE, i2c->regs + HSI2C_CONF);
}
