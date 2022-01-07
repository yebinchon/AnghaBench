
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seiko_panel {int prepared; int dvdd; int avdd; } ;
struct drm_panel {int dummy; } ;


 int msleep (int) ;
 int regulator_disable (int ) ;
 struct seiko_panel* to_seiko_panel (struct drm_panel*) ;

__attribute__((used)) static int seiko_panel_unprepare(struct drm_panel *panel)
{
 struct seiko_panel *p = to_seiko_panel(panel);

 if (!p->prepared)
  return 0;

 regulator_disable(p->avdd);


 msleep(100);

 regulator_disable(p->dvdd);

 p->prepared = 0;

 return 0;
}
