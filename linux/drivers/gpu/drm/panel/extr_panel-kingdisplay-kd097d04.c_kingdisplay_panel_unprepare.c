
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kingdisplay_panel {int prepared; int supply; int enable_gpio; int link; } ;
struct drm_panel {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int ) ;
 int mipi_dsi_dcs_enter_sleep_mode (int ) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 struct kingdisplay_panel* to_kingdisplay_panel (struct drm_panel*) ;

__attribute__((used)) static int kingdisplay_panel_unprepare(struct drm_panel *panel)
{
 struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
 int err;

 if (!kingdisplay->prepared)
  return 0;

 err = mipi_dsi_dcs_enter_sleep_mode(kingdisplay->link);
 if (err < 0) {
  DRM_DEV_ERROR(panel->dev, "failed to enter sleep mode: %d\n",
         err);
  return err;
 }


 msleep(120);

 gpiod_set_value_cansleep(kingdisplay->enable_gpio, 0);

 err = regulator_disable(kingdisplay->supply);
 if (err < 0)
  return err;

 kingdisplay->prepared = 0;

 return 0;
}
