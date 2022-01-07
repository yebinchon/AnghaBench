
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_i2c_dev {scalar_t__ base; } ;


 unsigned long I2C_TX_FIFO ;
 int readl (scalar_t__) ;
 scalar_t__ tegra_i2c_reg_addr (struct tegra_i2c_dev*,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void i2c_writel(struct tegra_i2c_dev *i2c_dev, u32 val,
         unsigned long reg)
{
 writel(val, i2c_dev->base + tegra_i2c_reg_addr(i2c_dev, reg));


 if (reg != I2C_TX_FIFO)
  readl(i2c_dev->base + tegra_i2c_reg_addr(i2c_dev, reg));
}
