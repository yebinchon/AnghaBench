
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct drm_connector {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct drm_connector_state* kmalloc (int,int ) ;

struct drm_connector_state *
drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector)
{
 struct drm_connector_state *state;

 if (WARN_ON(!connector->state))
  return ((void*)0);

 state = kmalloc(sizeof(*state), GFP_KERNEL);
 if (state)
  __drm_atomic_helper_connector_duplicate_state(connector, state);

 return state;
}
