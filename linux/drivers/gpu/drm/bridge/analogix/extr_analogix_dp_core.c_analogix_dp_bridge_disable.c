
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {struct analogix_dp_device* driver_private; } ;
struct analogix_dp_device {scalar_t__ dpms_mode; int fast_train_enable; int psr_supported; int dev; int clock; int phy; TYPE_1__* plat_data; int irq; } ;
struct TYPE_2__ {int (* power_off ) (TYPE_1__*) ;scalar_t__ panel; } ;


 int DRM_ERROR (char*,...) ;
 scalar_t__ DRM_MODE_DPMS_OFF ;
 scalar_t__ DRM_MODE_DPMS_ON ;
 int POWER_ALL ;
 int analogix_dp_prepare_panel (struct analogix_dp_device*,int,int) ;
 int analogix_dp_set_analog_power_down (struct analogix_dp_device*,int ,int) ;
 int clk_disable_unprepare (int ) ;
 int disable_irq (int ) ;
 scalar_t__ drm_panel_disable (scalar_t__) ;
 int phy_power_off (int ) ;
 int pm_runtime_put_sync (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
{
 struct analogix_dp_device *dp = bridge->driver_private;
 int ret;

 if (dp->dpms_mode != DRM_MODE_DPMS_ON)
  return;

 if (dp->plat_data->panel) {
  if (drm_panel_disable(dp->plat_data->panel)) {
   DRM_ERROR("failed to disable the panel\n");
   return;
  }
 }

 disable_irq(dp->irq);

 if (dp->plat_data->power_off)
  dp->plat_data->power_off(dp->plat_data);

 analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);
 phy_power_off(dp->phy);

 clk_disable_unprepare(dp->clock);

 pm_runtime_put_sync(dp->dev);

 ret = analogix_dp_prepare_panel(dp, 0, 1);
 if (ret)
  DRM_ERROR("failed to setup the panel ret = %d\n", ret);

 dp->fast_train_enable = 0;
 dp->psr_supported = 0;
 dp->dpms_mode = DRM_MODE_DPMS_OFF;
}
