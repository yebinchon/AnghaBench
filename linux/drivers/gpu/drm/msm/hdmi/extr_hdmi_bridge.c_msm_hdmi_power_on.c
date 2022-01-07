
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hdmi_platform_config {int pwr_reg_cnt; int pwr_clk_cnt; int * pwr_clk_names; int * pwr_reg_names; } ;
struct hdmi_bridge {struct hdmi* hdmi; } ;
struct hdmi {int * pwr_clks; int pixclock; int * pwr_regs; TYPE_1__* pdev; struct hdmi_platform_config* config; } ;
struct drm_device {int dev; } ;
struct drm_bridge {struct drm_device* dev; } ;
struct TYPE_2__ {int dev; } ;


 int DBG (char*,int ) ;
 int DRM_DEV_ERROR (int ,char*,int ,int) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int ) ;
 int pm_runtime_get_sync (int *) ;
 int regulator_enable (int ) ;
 struct hdmi_bridge* to_hdmi_bridge (struct drm_bridge*) ;

__attribute__((used)) static void msm_hdmi_power_on(struct drm_bridge *bridge)
{
 struct drm_device *dev = bridge->dev;
 struct hdmi_bridge *hdmi_bridge = to_hdmi_bridge(bridge);
 struct hdmi *hdmi = hdmi_bridge->hdmi;
 const struct hdmi_platform_config *config = hdmi->config;
 int i, ret;

 pm_runtime_get_sync(&hdmi->pdev->dev);

 for (i = 0; i < config->pwr_reg_cnt; i++) {
  ret = regulator_enable(hdmi->pwr_regs[i]);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to enable pwr regulator: %s (%d)\n",
     config->pwr_reg_names[i], ret);
  }
 }

 if (config->pwr_clk_cnt > 0) {
  DBG("pixclock: %lu", hdmi->pixclock);
  ret = clk_set_rate(hdmi->pwr_clks[0], hdmi->pixclock);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to set pixel clk: %s (%d)\n",
     config->pwr_clk_names[0], ret);
  }
 }

 for (i = 0; i < config->pwr_clk_cnt; i++) {
  ret = clk_prepare_enable(hdmi->pwr_clks[i]);
  if (ret) {
   DRM_DEV_ERROR(dev->dev, "failed to enable pwr clk: %s (%d)\n",
     config->pwr_clk_names[i], ret);
  }
 }
}
