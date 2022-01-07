
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_shared_dpll {int dummy; } ;
struct intel_dpll_hw_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int TBT_PLL_ENABLE ;
 int icl_pll_get_hw_state (struct drm_i915_private*,struct intel_shared_dpll*,struct intel_dpll_hw_state*,int ) ;

__attribute__((used)) static bool tbt_pll_get_hw_state(struct drm_i915_private *dev_priv,
     struct intel_shared_dpll *pll,
     struct intel_dpll_hw_state *hw_state)
{
 return icl_pll_get_hw_state(dev_priv, pll, hw_state, TBT_PLL_ENABLE);
}
