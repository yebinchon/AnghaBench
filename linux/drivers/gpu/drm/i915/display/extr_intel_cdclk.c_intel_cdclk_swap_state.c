
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int actual; int logical; } ;
struct TYPE_4__ {int dev; } ;
struct intel_atomic_state {TYPE_2__ cdclk; TYPE_1__ base; } ;
struct TYPE_6__ {int actual; int logical; } ;
struct drm_i915_private {TYPE_3__ cdclk; } ;


 int swap (int ,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_cdclk_swap_state(struct intel_atomic_state *state)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);

 swap(state->cdclk.logical, dev_priv->cdclk.logical);
 swap(state->cdclk.actual, dev_priv->cdclk.actual);
}
