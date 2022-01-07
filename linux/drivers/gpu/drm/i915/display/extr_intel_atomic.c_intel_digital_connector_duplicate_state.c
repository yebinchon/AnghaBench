
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct intel_digital_connector_state {struct drm_connector_state base; } ;
struct drm_connector {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct intel_digital_connector_state* kmemdup (int ,int,int ) ;

struct drm_connector_state *
intel_digital_connector_duplicate_state(struct drm_connector *connector)
{
 struct intel_digital_connector_state *state;

 state = kmemdup(connector->state, sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 __drm_atomic_helper_connector_duplicate_state(connector, &state->base);
 return &state->base;
}
