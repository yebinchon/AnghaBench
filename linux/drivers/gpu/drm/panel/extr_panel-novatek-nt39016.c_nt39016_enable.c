
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nt39016 {scalar_t__ backlight; int dev; int map; } ;
struct drm_panel {int dummy; } ;


 int NT39016_REG_SYSTEM ;
 int NT39016_SYSTEM_RESET_N ;
 int NT39016_SYSTEM_STANDBY ;
 int backlight_enable (scalar_t__) ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regmap_write (int ,int ,int) ;
 struct nt39016* to_nt39016 (struct drm_panel*) ;

__attribute__((used)) static int nt39016_enable(struct drm_panel *drm_panel)
{
 struct nt39016 *panel = to_nt39016(drm_panel);
 int ret;

 ret = regmap_write(panel->map, NT39016_REG_SYSTEM,
      NT39016_SYSTEM_RESET_N | NT39016_SYSTEM_STANDBY);
 if (ret) {
  dev_err(panel->dev, "Unable to enable panel: %d", ret);
  return ret;
 }

 if (panel->backlight) {

  msleep(150);

  ret = backlight_enable(panel->backlight);
 }

 return ret;
}
