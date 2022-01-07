
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_nt_panel {int prepared; scalar_t__ reset_gpio; int supply; } ;
struct drm_panel {int dev; } ;


 int dev_err (int ,char*,int) ;
 int gpiod_set_value (scalar_t__,int ) ;
 int regulator_disable (int ) ;
 int sharp_nt_panel_off (struct sharp_nt_panel*) ;
 struct sharp_nt_panel* to_sharp_nt_panel (struct drm_panel*) ;

__attribute__((used)) static int sharp_nt_panel_unprepare(struct drm_panel *panel)
{
 struct sharp_nt_panel *sharp_nt = to_sharp_nt_panel(panel);
 int ret;

 if (!sharp_nt->prepared)
  return 0;

 ret = sharp_nt_panel_off(sharp_nt);
 if (ret < 0) {
  dev_err(panel->dev, "failed to set panel off: %d\n", ret);
  return ret;
 }

 regulator_disable(sharp_nt->supply);
 if (sharp_nt->reset_gpio)
  gpiod_set_value(sharp_nt->reset_gpio, 0);

 sharp_nt->prepared = 0;

 return 0;
}
