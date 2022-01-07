
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {TYPE_1__* funcs; struct drm_bridge* next; } ;
struct TYPE_2__ {int (* disable ) (struct drm_bridge*) ;} ;


 int stub1 (struct drm_bridge*) ;

void drm_bridge_disable(struct drm_bridge *bridge)
{
 if (!bridge)
  return;

 drm_bridge_disable(bridge->next);

 if (bridge->funcs->disable)
  bridge->funcs->disable(bridge);
}
