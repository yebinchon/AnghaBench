
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_i2c_dev {int dummy; } ;


 int DVC_CTRL_REG1 ;
 int DVC_CTRL_REG1_INTR_EN ;
 int DVC_CTRL_REG3 ;
 int DVC_CTRL_REG3_I2C_DONE_INTR_EN ;
 int DVC_CTRL_REG3_SW_PROG ;
 int dvc_readl (struct tegra_i2c_dev*,int ) ;
 int dvc_writel (struct tegra_i2c_dev*,int ,int ) ;

__attribute__((used)) static void tegra_dvc_init(struct tegra_i2c_dev *i2c_dev)
{
 u32 val;

 val = dvc_readl(i2c_dev, DVC_CTRL_REG3);
 val |= DVC_CTRL_REG3_SW_PROG;
 val |= DVC_CTRL_REG3_I2C_DONE_INTR_EN;
 dvc_writel(i2c_dev, val, DVC_CTRL_REG3);

 val = dvc_readl(i2c_dev, DVC_CTRL_REG1);
 val |= DVC_CTRL_REG1_INTR_EN;
 dvc_writel(i2c_dev, val, DVC_CTRL_REG1);
}
