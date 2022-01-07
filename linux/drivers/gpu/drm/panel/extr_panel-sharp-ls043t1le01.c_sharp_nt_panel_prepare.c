
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sharp_nt_panel {int prepared; scalar_t__ reset_gpio; int supply; } ;
struct drm_panel {int dev; } ;


 int dev_err (int ,char*,int) ;
 int gpiod_set_value (scalar_t__,int) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int sharp_nt_panel_init (struct sharp_nt_panel*) ;
 int sharp_nt_panel_on (struct sharp_nt_panel*) ;
 struct sharp_nt_panel* to_sharp_nt_panel (struct drm_panel*) ;

__attribute__((used)) static int sharp_nt_panel_prepare(struct drm_panel *panel)
{
 struct sharp_nt_panel *sharp_nt = to_sharp_nt_panel(panel);
 int ret;

 if (sharp_nt->prepared)
  return 0;

 ret = regulator_enable(sharp_nt->supply);
 if (ret < 0)
  return ret;

 msleep(20);

 if (sharp_nt->reset_gpio) {
  gpiod_set_value(sharp_nt->reset_gpio, 1);
  msleep(1);
  gpiod_set_value(sharp_nt->reset_gpio, 0);
  msleep(1);
  gpiod_set_value(sharp_nt->reset_gpio, 1);
  msleep(10);
 }

 ret = sharp_nt_panel_init(sharp_nt);
 if (ret < 0) {
  dev_err(panel->dev, "failed to init panel: %d\n", ret);
  goto poweroff;
 }

 ret = sharp_nt_panel_on(sharp_nt);
 if (ret < 0) {
  dev_err(panel->dev, "failed to set panel on: %d\n", ret);
  goto poweroff;
 }

 sharp_nt->prepared = 1;

 return 0;

poweroff:
 regulator_disable(sharp_nt->supply);
 if (sharp_nt->reset_gpio)
  gpiod_set_value(sharp_nt->reset_gpio, 0);
 return ret;
}
