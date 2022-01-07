
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps8622_bridge {int enabled; int gpio_rst; scalar_t__ v12; int panel; int gpio_slp; } ;
struct drm_bridge {int dummy; } ;


 int DRM_ERROR (char*) ;
 int PS8622_POWER_FALL_T16_MAX_US ;
 int PS8622_POWER_OFF_T17_MS ;
 struct ps8622_bridge* bridge_to_ps8622 (struct drm_bridge*) ;
 scalar_t__ drm_panel_unprepare (int ) ;
 int gpiod_set_value (int ,int ) ;
 int msleep (int ) ;
 int regulator_disable (scalar_t__) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ps8622_post_disable(struct drm_bridge *bridge)
{
 struct ps8622_bridge *ps8622 = bridge_to_ps8622(bridge);

 if (!ps8622->enabled)
  return;

 ps8622->enabled = 0;






 gpiod_set_value(ps8622->gpio_slp, 0);

 if (drm_panel_unprepare(ps8622->panel)) {
  DRM_ERROR("failed to unprepare panel\n");
  return;
 }

 if (ps8622->v12)
  regulator_disable(ps8622->v12);





 usleep_range(PS8622_POWER_FALL_T16_MAX_US,
       2 * PS8622_POWER_FALL_T16_MAX_US);
 gpiod_set_value(ps8622->gpio_rst, 0);

 msleep(PS8622_POWER_OFF_T17_MS);
}
