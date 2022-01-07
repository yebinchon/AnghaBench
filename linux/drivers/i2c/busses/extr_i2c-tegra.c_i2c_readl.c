
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_i2c_dev {scalar_t__ base; } ;


 int readl (scalar_t__) ;
 scalar_t__ tegra_i2c_reg_addr (struct tegra_i2c_dev*,unsigned long) ;

__attribute__((used)) static u32 i2c_readl(struct tegra_i2c_dev *i2c_dev, unsigned long reg)
{
 return readl(i2c_dev->base + tegra_i2c_reg_addr(i2c_dev, reg));
}
