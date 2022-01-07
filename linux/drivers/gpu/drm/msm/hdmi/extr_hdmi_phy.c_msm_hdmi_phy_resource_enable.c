
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_phy_cfg {int num_regs; int num_clks; int * clk_names; int * reg_names; } ;
struct hdmi_phy {int * clks; int * regs; TYPE_1__* pdev; struct hdmi_phy_cfg* cfg; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int DRM_DEV_ERROR (struct device*,char*,int ,int) ;
 int clk_prepare_enable (int ) ;
 int pm_runtime_get_sync (struct device*) ;
 int regulator_enable (int ) ;

int msm_hdmi_phy_resource_enable(struct hdmi_phy *phy)
{
 struct hdmi_phy_cfg *cfg = phy->cfg;
 struct device *dev = &phy->pdev->dev;
 int i, ret = 0;

 pm_runtime_get_sync(dev);

 for (i = 0; i < cfg->num_regs; i++) {
  ret = regulator_enable(phy->regs[i]);
  if (ret)
   DRM_DEV_ERROR(dev, "failed to enable regulator: %s (%d)\n",
    cfg->reg_names[i], ret);
 }

 for (i = 0; i < cfg->num_clks; i++) {
  ret = clk_prepare_enable(phy->clks[i]);
  if (ret)
   DRM_DEV_ERROR(dev, "failed to enable clock: %s (%d)\n",
    cfg->clk_names[i], ret);
 }

 return ret;
}
