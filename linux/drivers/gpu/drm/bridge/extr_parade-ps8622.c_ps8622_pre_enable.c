
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps8622_bridge {int enabled; int gpio_rst; int gpio_slp; int panel; scalar_t__ v12; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int PS8622_POWER_RISE_T1_MAX_US ;
 int PS8622_POWER_RISE_T1_MIN_US ;
 int PS8622_RST_HIGH_T2_MAX_US ;
 int PS8622_RST_HIGH_T2_MIN_US ;
 struct ps8622_bridge* bridge_to_ps8622 (struct drm_bridge*) ;
 scalar_t__ drm_panel_prepare (int ) ;
 int gpiod_set_value (int ,int) ;
 int ps8622_send_config (struct ps8622_bridge*) ;
 int regulator_enable (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ps8622_pre_enable(struct drm_bridge *bridge)
{
 struct ps8622_bridge *ps8622 = bridge_to_ps8622(bridge);
 int ret;

 if (ps8622->enabled)
  return;

 gpiod_set_value(ps8622->gpio_rst, 0);

 if (ps8622->v12) {
  ret = regulator_enable(ps8622->v12);
  if (ret)
   DRM_ERROR("fails to enable ps8622->v12");
 }

 if (drm_panel_prepare(ps8622->panel)) {
  DRM_ERROR("failed to prepare panel\n");
  return;
 }

 gpiod_set_value(ps8622->gpio_slp, 1);
 usleep_range(PS8622_RST_HIGH_T2_MIN_US + PS8622_POWER_RISE_T1_MAX_US,
       PS8622_RST_HIGH_T2_MAX_US + PS8622_POWER_RISE_T1_MIN_US);

 gpiod_set_value(ps8622->gpio_rst, 1);


 usleep_range(20000, 30000);

 ret = ps8622_send_config(ps8622);
 if (ret) {
  DRM_ERROR("Failed to send config to bridge (%d)\n", ret);
  return;
 }

 ps8622->enabled = 1;
}
