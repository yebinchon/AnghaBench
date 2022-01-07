
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {struct drm_bridge* next; TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* post_disable ) (struct drm_bridge*) ;} ;


 int stub1 (struct drm_bridge*) ;

void drm_bridge_post_disable(struct drm_bridge *bridge)
{
 if (!bridge)
  return;

 if (bridge->funcs->post_disable)
  bridge->funcs->post_disable(bridge);

 drm_bridge_post_disable(bridge->next);
}
