
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kingdisplay_panel_cmd {int dummy; } ;
struct kingdisplay_panel {int prepared; int supply; int enable_gpio; int link; } ;
struct drm_panel {int dev; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int * init_code ;
 int mipi_dsi_dcs_exit_sleep_mode (int ) ;
 int mipi_dsi_dcs_set_display_on (int ) ;
 int mipi_dsi_generic_write (int ,int *,int) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct kingdisplay_panel* to_kingdisplay_panel (struct drm_panel*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int kingdisplay_panel_prepare(struct drm_panel *panel)
{
 struct kingdisplay_panel *kingdisplay = to_kingdisplay_panel(panel);
 int err, regulator_err;
 unsigned int i;

 if (kingdisplay->prepared)
  return 0;

 gpiod_set_value_cansleep(kingdisplay->enable_gpio, 0);

 err = regulator_enable(kingdisplay->supply);
 if (err < 0)
  return err;


 usleep_range(15000, 16000);

 gpiod_set_value_cansleep(kingdisplay->enable_gpio, 1);


 usleep_range(15000, 16000);

 for (i = 0; i < ARRAY_SIZE(init_code); i++) {
  err = mipi_dsi_generic_write(kingdisplay->link, &init_code[i],
     sizeof(struct kingdisplay_panel_cmd));
  if (err < 0) {
   DRM_DEV_ERROR(panel->dev, "failed write init cmds: %d\n",
          err);
   goto poweroff;
  }
 }

 err = mipi_dsi_dcs_exit_sleep_mode(kingdisplay->link);
 if (err < 0) {
  DRM_DEV_ERROR(panel->dev, "failed to exit sleep mode: %d\n",
         err);
  goto poweroff;
 }


 msleep(120);

 err = mipi_dsi_dcs_set_display_on(kingdisplay->link);
 if (err < 0) {
  DRM_DEV_ERROR(panel->dev, "failed to set display on: %d\n",
         err);
  goto poweroff;
 }


 usleep_range(10000, 11000);

 kingdisplay->prepared = 1;

 return 0;

poweroff:
 gpiod_set_value_cansleep(kingdisplay->enable_gpio, 0);

 regulator_err = regulator_disable(kingdisplay->supply);
 if (regulator_err)
  DRM_DEV_ERROR(panel->dev, "failed to disable regulator: %d\n",
         regulator_err);

 return err;
}
