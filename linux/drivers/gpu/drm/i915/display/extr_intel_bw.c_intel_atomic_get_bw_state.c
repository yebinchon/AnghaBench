
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_bw_state {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct intel_atomic_state {TYPE_1__ base; } ;
struct drm_private_state {int dummy; } ;
struct drm_i915_private {int bw_obj; } ;


 struct intel_bw_state* ERR_CAST (struct drm_private_state*) ;
 scalar_t__ IS_ERR (struct drm_private_state*) ;
 struct drm_private_state* drm_atomic_get_private_obj_state (TYPE_1__*,int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_bw_state* to_intel_bw_state (struct drm_private_state*) ;

__attribute__((used)) static struct intel_bw_state *
intel_atomic_get_bw_state(struct intel_atomic_state *state)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 struct drm_private_state *bw_state;

 bw_state = drm_atomic_get_private_obj_state(&state->base,
          &dev_priv->bw_obj);
 if (IS_ERR(bw_state))
  return ERR_CAST(bw_state);

 return to_intel_bw_state(bw_state);
}
