
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_panel {int prepared; int supply; int link1; } ;
struct drm_panel {int dev; } ;


 int dev_err (int ,char*,int) ;
 int mipi_dsi_dcs_enter_sleep_mode (int ) ;
 int mipi_dsi_dcs_set_display_off (int ) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int sharp_wait_frames (struct sharp_panel*,int) ;
 struct sharp_panel* to_sharp_panel (struct drm_panel*) ;

__attribute__((used)) static int sharp_panel_unprepare(struct drm_panel *panel)
{
 struct sharp_panel *sharp = to_sharp_panel(panel);
 int err;

 if (!sharp->prepared)
  return 0;

 sharp_wait_frames(sharp, 4);

 err = mipi_dsi_dcs_set_display_off(sharp->link1);
 if (err < 0)
  dev_err(panel->dev, "failed to set display off: %d\n", err);

 err = mipi_dsi_dcs_enter_sleep_mode(sharp->link1);
 if (err < 0)
  dev_err(panel->dev, "failed to enter sleep mode: %d\n", err);

 msleep(120);

 regulator_disable(sharp->supply);

 sharp->prepared = 0;

 return 0;
}
