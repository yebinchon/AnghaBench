
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_bw_state {int base; } ;
struct drm_i915_private {int bw_obj; int drm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_atomic_private_obj_init (int *,int *,int *,int *) ;
 int intel_bw_funcs ;
 struct intel_bw_state* kzalloc (int,int ) ;

int intel_bw_init(struct drm_i915_private *dev_priv)
{
 struct intel_bw_state *state;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 drm_atomic_private_obj_init(&dev_priv->drm, &dev_priv->bw_obj,
        &state->base, &intel_bw_funcs);

 return 0;
}
