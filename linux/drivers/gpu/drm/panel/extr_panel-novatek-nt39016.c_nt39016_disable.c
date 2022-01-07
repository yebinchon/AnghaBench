
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nt39016 {int dev; int map; int backlight; } ;
struct drm_panel {int dummy; } ;


 int NT39016_REG_SYSTEM ;
 int NT39016_SYSTEM_RESET_N ;
 int backlight_disable (int ) ;
 int dev_err (int ,char*,int) ;
 int regmap_write (int ,int ,int ) ;
 struct nt39016* to_nt39016 (struct drm_panel*) ;

__attribute__((used)) static int nt39016_disable(struct drm_panel *drm_panel)
{
 struct nt39016 *panel = to_nt39016(drm_panel);
 int err;

 backlight_disable(panel->backlight);

 err = regmap_write(panel->map, NT39016_REG_SYSTEM,
      NT39016_SYSTEM_RESET_N);
 if (err) {
  dev_err(panel->dev, "Unable to disable panel: %d", err);
  return err;
 }

 return 0;
}
