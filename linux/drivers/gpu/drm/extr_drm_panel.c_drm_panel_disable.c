
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_panel {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* disable ) (struct drm_panel*) ;} ;


 int EINVAL ;
 int ENOSYS ;
 int stub1 (struct drm_panel*) ;

int drm_panel_disable(struct drm_panel *panel)
{
 if (panel && panel->funcs && panel->funcs->disable)
  return panel->funcs->disable(panel);

 return panel ? -ENOSYS : -EINVAL;
}
