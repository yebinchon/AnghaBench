
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seiko_panel {int prepared; int dvdd; int avdd; } ;
struct drm_panel {int dev; } ;


 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 struct seiko_panel* to_seiko_panel (struct drm_panel*) ;

__attribute__((used)) static int seiko_panel_prepare(struct drm_panel *panel)
{
 struct seiko_panel *p = to_seiko_panel(panel);
 int err;

 if (p->prepared)
  return 0;

 err = regulator_enable(p->dvdd);
 if (err < 0) {
  dev_err(panel->dev, "failed to enable dvdd: %d\n", err);
  return err;
 }


 msleep(100);

 err = regulator_enable(p->avdd);
 if (err < 0) {
  dev_err(panel->dev, "failed to enable avdd: %d\n", err);
  goto disable_dvdd;
 }

 p->prepared = 1;

 return 0;

disable_dvdd:
 regulator_disable(p->dvdd);
 return err;
}
