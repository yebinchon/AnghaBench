
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_simple {int prepared; TYPE_2__* desc; scalar_t__ no_hpd; int enable_gpio; int supply; } ;
struct drm_panel {int dev; } ;
struct TYPE_3__ {unsigned int prepare; scalar_t__ hpd_absent_delay; } ;
struct TYPE_4__ {TYPE_1__ delay; } ;


 int dev_err (int ,char*,int) ;
 int gpiod_set_value_cansleep (int ,int) ;
 int msleep (unsigned int) ;
 int regulator_enable (int ) ;
 struct panel_simple* to_panel_simple (struct drm_panel*) ;

__attribute__((used)) static int panel_simple_prepare(struct drm_panel *panel)
{
 struct panel_simple *p = to_panel_simple(panel);
 unsigned int delay;
 int err;

 if (p->prepared)
  return 0;

 err = regulator_enable(p->supply);
 if (err < 0) {
  dev_err(panel->dev, "failed to enable supply: %d\n", err);
  return err;
 }

 gpiod_set_value_cansleep(p->enable_gpio, 1);

 delay = p->desc->delay.prepare;
 if (p->no_hpd)
  delay += p->desc->delay.hpd_absent_delay;
 if (delay)
  msleep(delay);

 p->prepared = 1;

 return 0;
}
