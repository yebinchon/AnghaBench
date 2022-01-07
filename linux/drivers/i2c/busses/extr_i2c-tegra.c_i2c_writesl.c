
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_i2c_dev {scalar_t__ base; } ;


 scalar_t__ tegra_i2c_reg_addr (struct tegra_i2c_dev*,unsigned long) ;
 int writesl (scalar_t__,void*,int) ;

__attribute__((used)) static void i2c_writesl(struct tegra_i2c_dev *i2c_dev, void *data,
   unsigned long reg, int len)
{
 writesl(i2c_dev->base + tegra_i2c_reg_addr(i2c_dev, reg), data, len);
}
