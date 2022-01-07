
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sharp_panel {int prepared; int supply; int link1; int mode; int link2; } ;
struct drm_panel {int dev; } ;


 int MIPI_DCS_PIXEL_FMT_24BIT ;
 int dev_err (int ,char*,int) ;
 int mipi_dsi_dcs_exit_sleep_mode (int ) ;
 int mipi_dsi_dcs_set_display_on (int ) ;
 int mipi_dsi_dcs_set_pixel_format (int ,int ) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int sharp_panel_write (struct sharp_panel*,int,int) ;
 int sharp_setup_symmetrical_split (int ,int ,int ) ;
 int sharp_wait_frames (struct sharp_panel*,int) ;
 struct sharp_panel* to_sharp_panel (struct drm_panel*) ;

__attribute__((used)) static int sharp_panel_prepare(struct drm_panel *panel)
{
 struct sharp_panel *sharp = to_sharp_panel(panel);
 u8 format = MIPI_DCS_PIXEL_FMT_24BIT;
 int err;

 if (sharp->prepared)
  return 0;

 err = regulator_enable(sharp->supply);
 if (err < 0)
  return err;







 msleep(150);

 err = mipi_dsi_dcs_exit_sleep_mode(sharp->link1);
 if (err < 0) {
  dev_err(panel->dev, "failed to exit sleep mode: %d\n", err);
  goto poweroff;
 }
 err = sharp_panel_write(sharp, 0x1000, 0x2a);
 if (err < 0) {
  dev_err(panel->dev, "failed to set left-right mode: %d\n", err);
  goto poweroff;
 }


 err = sharp_panel_write(sharp, 0x1001, 0x01);
 if (err < 0) {
  dev_err(panel->dev, "failed to enable command mode: %d\n", err);
  goto poweroff;
 }

 err = mipi_dsi_dcs_set_pixel_format(sharp->link1, format);
 if (err < 0) {
  dev_err(panel->dev, "failed to set pixel format: %d\n", err);
  goto poweroff;
 }
 err = sharp_setup_symmetrical_split(sharp->link1, sharp->link2,
         sharp->mode);
 if (err < 0) {
  dev_err(panel->dev, "failed to set up symmetrical split: %d\n",
   err);
  goto poweroff;
 }

 err = mipi_dsi_dcs_set_display_on(sharp->link1);
 if (err < 0) {
  dev_err(panel->dev, "failed to set display on: %d\n", err);
  goto poweroff;
 }

 sharp->prepared = 1;


 sharp_wait_frames(sharp, 6);

 return 0;

poweroff:
 regulator_disable(sharp->supply);
 return err;
}
