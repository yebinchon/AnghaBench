
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_panel {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* get_modes ) (struct drm_panel*) ;} ;


 int EINVAL ;
 int ENOSYS ;
 int stub1 (struct drm_panel*) ;

int drm_panel_get_modes(struct drm_panel *panel)
{
 if (panel && panel->funcs && panel->funcs->get_modes)
  return panel->funcs->get_modes(panel);

 return panel ? -ENOSYS : -EINVAL;
}
