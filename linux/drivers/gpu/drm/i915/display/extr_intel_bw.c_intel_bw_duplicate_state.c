
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_private_state {int dummy; } ;
struct intel_bw_state {struct drm_private_state base; } ;
struct drm_private_obj {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_private_obj_duplicate_state (struct drm_private_obj*,struct drm_private_state*) ;
 struct intel_bw_state* kmemdup (int ,int,int ) ;

__attribute__((used)) static struct drm_private_state *intel_bw_duplicate_state(struct drm_private_obj *obj)
{
 struct intel_bw_state *state;

 state = kmemdup(obj->state, sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 __drm_atomic_helper_private_obj_duplicate_state(obj, &state->base);

 return &state->base;
}
