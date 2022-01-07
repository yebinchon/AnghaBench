
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_bridge {struct drm_bridge* next; TYPE_1__* funcs; } ;
struct drm_atomic_state {int dummy; } ;
struct TYPE_2__ {int (* enable ) (struct drm_bridge*) ;int (* atomic_enable ) (struct drm_bridge*,struct drm_atomic_state*) ;} ;


 int stub1 (struct drm_bridge*,struct drm_atomic_state*) ;
 int stub2 (struct drm_bridge*) ;

void drm_atomic_bridge_enable(struct drm_bridge *bridge,
         struct drm_atomic_state *state)
{
 if (!bridge)
  return;

 if (bridge->funcs->atomic_enable)
  bridge->funcs->atomic_enable(bridge, state);
 else if (bridge->funcs->enable)
  bridge->funcs->enable(bridge);

 drm_atomic_bridge_enable(bridge->next, state);
}
