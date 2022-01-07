
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_dev {scalar_t__ is_dvc; } ;


 unsigned long I2C_TX_FIFO ;

__attribute__((used)) static unsigned long tegra_i2c_reg_addr(struct tegra_i2c_dev *i2c_dev,
     unsigned long reg)
{
 if (i2c_dev->is_dvc)
  reg += (reg >= I2C_TX_FIFO) ? 0x10 : 0x40;
 return reg;
}
