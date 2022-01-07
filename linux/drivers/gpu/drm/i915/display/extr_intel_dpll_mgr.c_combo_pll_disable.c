
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_shared_dpll {int wakeref; TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {scalar_t__ id; } ;


 int CNL_DPLL_ENABLE (scalar_t__) ;
 scalar_t__ DPLL_ID_EHL_DPLL4 ;
 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int MG_PLL_ENABLE (int ) ;
 int POWER_DOMAIN_DPLL_DC_OFF ;
 int icl_pll_disable (struct drm_i915_private*,struct intel_shared_dpll*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static void combo_pll_disable(struct drm_i915_private *dev_priv,
         struct intel_shared_dpll *pll)
{
 i915_reg_t enable_reg = CNL_DPLL_ENABLE(pll->info->id);

 if (IS_ELKHARTLAKE(dev_priv) &&
     pll->info->id == DPLL_ID_EHL_DPLL4) {
  enable_reg = MG_PLL_ENABLE(0);
  icl_pll_disable(dev_priv, pll, enable_reg);

  intel_display_power_put(dev_priv, POWER_DOMAIN_DPLL_DC_OFF,
     pll->wakeref);
  return;
 }

 icl_pll_disable(dev_priv, pll, enable_reg);
}
