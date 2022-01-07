
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panel_simple {int prepared; TYPE_2__* desc; int supply; int enable_gpio; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {scalar_t__ unprepare; } ;
struct TYPE_4__ {TYPE_1__ delay; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int msleep (scalar_t__) ;
 int regulator_disable (int ) ;
 struct panel_simple* to_panel_simple (struct drm_panel*) ;

__attribute__((used)) static int panel_simple_unprepare(struct drm_panel *panel)
{
 struct panel_simple *p = to_panel_simple(panel);

 if (!p->prepared)
  return 0;

 gpiod_set_value_cansleep(p->enable_gpio, 0);

 regulator_disable(p->supply);

 if (p->desc->delay.unprepare)
  msleep(p->desc->delay.unprepare);

 p->prepared = 0;

 return 0;
}
