
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {TYPE_1__* funcs; struct drm_bridge* next; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_2__ {int (* disable ) (struct drm_bridge*) ;int (* atomic_disable ) (struct drm_bridge*,struct drm_atomic_state*) ;} ;


 int stub1 (struct drm_bridge*,struct drm_atomic_state*) ;
 int stub2 (struct drm_bridge*) ;

void drm_atomic_bridge_disable(struct drm_bridge *bridge,
          struct drm_atomic_state *state)
{
 if (!bridge)
  return;

 drm_atomic_bridge_disable(bridge->next, state);

 if (bridge->funcs->atomic_disable)
  bridge->funcs->atomic_disable(bridge, state);
 else if (bridge->funcs->disable)
  bridge->funcs->disable(bridge);
}
