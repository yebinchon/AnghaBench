
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seiko_panel {TYPE_1__* desc; } ;
struct drm_panel {int dummy; } ;
struct display_timing {int dummy; } ;
struct TYPE_2__ {unsigned int num_timings; struct display_timing* timings; } ;


 struct seiko_panel* to_seiko_panel (struct drm_panel*) ;

__attribute__((used)) static int seiko_panel_get_timings(struct drm_panel *panel,
        unsigned int num_timings,
        struct display_timing *timings)
{
 struct seiko_panel *p = to_seiko_panel(panel);
 unsigned int i;

 if (p->desc->num_timings < num_timings)
  num_timings = p->desc->num_timings;

 if (timings)
  for (i = 0; i < num_timings; i++)
   timings[i] = p->desc->timings[i];

 return p->desc->num_timings;
}
