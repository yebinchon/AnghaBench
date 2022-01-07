
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_shared_dpll_state {int dummy; } ;
struct intel_shared_dpll {int state; } ;
struct TYPE_2__ {int dev; } ;
struct intel_atomic_state {int dpll_set; struct intel_shared_dpll_state* shared_dpll; TYPE_1__ base; } ;
struct drm_i915_private {int num_shared_dpll; struct intel_shared_dpll* shared_dplls; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;


 int swap (int ,struct intel_shared_dpll_state) ;
 struct drm_i915_private* to_i915 (int ) ;

void intel_shared_dpll_swap_state(struct intel_atomic_state *state)
{
 struct drm_i915_private *dev_priv = to_i915(state->base.dev);
 struct intel_shared_dpll_state *shared_dpll = state->shared_dpll;
 enum intel_dpll_id i;

 if (!state->dpll_set)
  return;

 for (i = 0; i < dev_priv->num_shared_dpll; i++) {
  struct intel_shared_dpll *pll =
   &dev_priv->shared_dplls[i];

  swap(pll->state, shared_dpll[i]);
 }
}
