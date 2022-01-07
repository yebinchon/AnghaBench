
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct vmw_connector_state {struct drm_connector_state base; } ;
struct drm_connector {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct vmw_connector_state* kmemdup (int ,int,int ) ;

struct drm_connector_state *
vmw_du_connector_duplicate_state(struct drm_connector *connector)
{
 struct drm_connector_state *state;
 struct vmw_connector_state *vcs;

 if (WARN_ON(!connector->state))
  return ((void*)0);

 vcs = kmemdup(connector->state, sizeof(*vcs), GFP_KERNEL);

 if (!vcs)
  return ((void*)0);

 state = &vcs->base;

 __drm_atomic_helper_connector_duplicate_state(connector, state);

 return state;
}
