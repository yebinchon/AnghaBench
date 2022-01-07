
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_dpll_hw_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {scalar_t__ id; } ;


 int CNL_DPLL_ENABLE (scalar_t__) ;
 scalar_t__ DPLL_ID_EHL_DPLL4 ;
 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int MG_PLL_ENABLE (int ) ;
 int icl_pll_get_hw_state (struct drm_i915_private*,struct intel_shared_dpll*,struct intel_dpll_hw_state*,int ) ;

__attribute__((used)) static bool combo_pll_get_hw_state(struct drm_i915_private *dev_priv,
       struct intel_shared_dpll *pll,
       struct intel_dpll_hw_state *hw_state)
{
 i915_reg_t enable_reg = CNL_DPLL_ENABLE(pll->info->id);

 if (IS_ELKHARTLAKE(dev_priv) &&
     pll->info->id == DPLL_ID_EHL_DPLL4) {
  enable_reg = MG_PLL_ENABLE(0);
 }

 return icl_pll_get_hw_state(dev_priv, pll, hw_state, enable_reg);
}
