
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_lvds {scalar_t__ enable_gpio; int dev; scalar_t__ supply; } ;
struct drm_panel {int dummy; } ;


 int dev_err (int ,char*,int) ;
 int gpiod_set_value_cansleep (scalar_t__,int) ;
 int regulator_enable (scalar_t__) ;
 struct panel_lvds* to_panel_lvds (struct drm_panel*) ;

__attribute__((used)) static int panel_lvds_prepare(struct drm_panel *panel)
{
 struct panel_lvds *lvds = to_panel_lvds(panel);

 if (lvds->supply) {
  int err;

  err = regulator_enable(lvds->supply);
  if (err < 0) {
   dev_err(lvds->dev, "failed to enable supply: %d\n",
    err);
   return err;
  }
 }

 if (lvds->enable_gpio)
  gpiod_set_value_cansleep(lvds->enable_gpio, 1);

 return 0;
}
