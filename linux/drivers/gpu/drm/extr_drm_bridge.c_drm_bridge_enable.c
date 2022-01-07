
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {struct drm_bridge* next; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* enable ) (struct drm_bridge*) ;} ;


 int stub1 (struct drm_bridge*) ;

void drm_bridge_enable(struct drm_bridge *bridge)
{
 if (!bridge)
  return;

 if (bridge->funcs->enable)
  bridge->funcs->enable(bridge);

 drm_bridge_enable(bridge->next);
}
