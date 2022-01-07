
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_platform_config {int pwr_clk_cnt; int pwr_reg_cnt; int * pwr_reg_names; } ;
struct hdmi_bridge {struct hdmi* hdmi; } ;
struct hdmi {TYPE_1__* pdev; int * pwr_regs; int * pwr_clks; struct hdmi_platform_config* config; } ;
struct drm_device {int dev; } ;
struct drm_bridge {struct drm_device* dev; } ;
struct TYPE_2__ {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 int mdelay (int) ;
 int pm_runtime_put_autosuspend (int *) ;
 int regulator_disable (int ) ;
 struct hdmi_bridge* to_hdmi_bridge (struct drm_bridge*) ;

__attribute__((used)) static void power_off(struct drm_bridge *bridge)
{
 struct drm_device *dev = bridge->dev;
 struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 struct hdmi *hdmi = hdmi_bridge->hdmi;
 const struct hdmi_platform_config *config = hdmi->config;
 int i, ret;




 mdelay(16 + 4);

 for (i = 0; i < config->pwr_clk_cnt; i++)
  clk_disable_unprepare(hdmi->pwr_clks[i]);

 for (i = 0; i < config->pwr_reg_cnt; i++) {
  ret = regulator_disable(hdmi->pwr_regs[i]);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to disable pwr regulator: %s (%d)\n",
     config->pwr_reg_names[i], ret);
  }
 }

 pm_runtime_put_autosuspend(&hdmi->pdev->dev);
}
