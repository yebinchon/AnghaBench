
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {struct drm_bridge* next; TYPE_1__* funcs; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_2__ {int (* post_disable ) (struct drm_bridge*) ;int (* atomic_post_disable ) (struct drm_bridge*,struct drm_atomic_state*) ;} ;


 int stub1 (struct drm_bridge*,struct drm_atomic_state*) ;
 int stub2 (struct drm_bridge*) ;

void drm_atomic_bridge_post_disable(struct drm_bridge *bridge,
        struct drm_atomic_state *state)
{
 if (!bridge)
  return;

 if (bridge->funcs->atomic_post_disable)
  bridge->funcs->atomic_post_disable(bridge, state);
 else if (bridge->funcs->post_disable)
  bridge->funcs->post_disable(bridge);

 drm_atomic_bridge_post_disable(bridge->next, state);
}
