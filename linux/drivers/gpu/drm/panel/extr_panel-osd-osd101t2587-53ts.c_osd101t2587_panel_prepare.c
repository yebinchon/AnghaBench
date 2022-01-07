
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd101t2587_panel {int prepared; int supply; } ;
struct drm_panel {int dummy; } ;


 int regulator_enable (int ) ;
 struct osd101t2587_panel* ti_osd_panel (struct drm_panel*) ;

__attribute__((used)) static int osd101t2587_panel_prepare(struct drm_panel *panel)
{
 struct osd101t2587_panel *osd101t2587 = ti_osd_panel(panel);
 int ret;

 if (osd101t2587->prepared)
  return 0;

 ret = regulator_enable(osd101t2587->supply);
 if (!ret)
  osd101t2587->prepared = 1;

 return ret;
}
