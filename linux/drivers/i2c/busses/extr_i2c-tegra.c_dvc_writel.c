
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_i2c_dev {scalar_t__ base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void dvc_writel(struct tegra_i2c_dev *i2c_dev, u32 val,
         unsigned long reg)
{
 writel(val, i2c_dev->base + reg);
}
