
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev; } ;
struct jdi_panel {TYPE_1__ base; } ;


 int drm_panel_remove (TYPE_1__*) ;

__attribute__((used)) static void jdi_panel_del(struct jdi_panel *jdi)
{
 if (jdi->base.dev)
  drm_panel_remove(&jdi->base);
}
