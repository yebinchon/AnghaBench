
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct innolux_panel {int prepared; int supplies; TYPE_1__* desc; int enable_gpio; int link; } ;
struct drm_panel {int dev; } ;
struct TYPE_2__ {int num_supplies; scalar_t__ power_down_delay; scalar_t__ sleep_mode_delay; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int mipi_dsi_dcs_enter_sleep_mode (int ) ;
 int mipi_dsi_dcs_set_display_off (int ) ;
 int msleep (scalar_t__) ;
 int regulator_bulk_disable (int ,int ) ;
 struct innolux_panel* to_innolux_panel (struct drm_panel*) ;

__attribute__((used)) static int innolux_panel_unprepare(struct drm_panel *panel)
{
 struct innolux_panel *innolux = to_innolux_panel(panel);
 int err;

 if (!innolux->prepared)
  return 0;

 err = mipi_dsi_dcs_set_display_off(innolux->link);
 if (err < 0)
  DRM_DEV_ERROR(panel->dev, "failed to set display off: %d\n",
         err);

 err = mipi_dsi_dcs_enter_sleep_mode(innolux->link);
 if (err < 0) {
  DRM_DEV_ERROR(panel->dev, "failed to enter sleep mode: %d\n",
         err);
  return err;
 }

 if (innolux->desc->sleep_mode_delay)
  msleep(innolux->desc->sleep_mode_delay);

 gpiod_set_value_cansleep(innolux->enable_gpio, 0);

 if (innolux->desc->power_down_delay)
  msleep(innolux->desc->power_down_delay);

 err = regulator_bulk_disable(innolux->desc->num_supplies,
         innolux->supplies);
 if (err < 0)
  return err;

 innolux->prepared = 0;

 return 0;
}
