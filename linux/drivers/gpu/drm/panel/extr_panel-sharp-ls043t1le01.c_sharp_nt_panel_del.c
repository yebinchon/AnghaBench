
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct sharp_nt_panel {TYPE_1__ base; } ;


 int drm_panel_remove (TYPE_1__*) ;

__attribute__((used)) static void sharp_nt_panel_del(struct sharp_nt_panel *sharp_nt)
{
 if (sharp_nt->base.dev)
  drm_panel_remove(&sharp_nt->base);
}
