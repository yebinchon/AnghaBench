
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_dpll_hw_state {void* cfgcr1; void* cfgcr0; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef int i915_reg_t ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int const DPLL_ID_EHL_DPLL4 ;
 void* I915_READ (int ) ;
 int ICL_DPLL_CFGCR0 (int const) ;
 int ICL_DPLL_CFGCR1 (int const) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_ELKHARTLAKE (struct drm_i915_private*) ;
 int PLL_ENABLE ;
 int POWER_DOMAIN_DISPLAY_CORE ;
 int TGL_DPLL_CFGCR0 (int const) ;
 int TGL_DPLL_CFGCR1 (int const) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static bool icl_pll_get_hw_state(struct drm_i915_private *dev_priv,
     struct intel_shared_dpll *pll,
     struct intel_dpll_hw_state *hw_state,
     i915_reg_t enable_reg)
{
 const enum intel_dpll_id id = pll->info->id;
 intel_wakeref_t wakeref;
 bool ret = 0;
 u32 val;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           POWER_DOMAIN_DISPLAY_CORE);
 if (!wakeref)
  return 0;

 val = I915_READ(enable_reg);
 if (!(val & PLL_ENABLE))
  goto out;

 if (INTEL_GEN(dev_priv) >= 12) {
  hw_state->cfgcr0 = I915_READ(TGL_DPLL_CFGCR0(id));
  hw_state->cfgcr1 = I915_READ(TGL_DPLL_CFGCR1(id));
 } else {
  if (IS_ELKHARTLAKE(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
   hw_state->cfgcr0 = I915_READ(ICL_DPLL_CFGCR0(4));
   hw_state->cfgcr1 = I915_READ(ICL_DPLL_CFGCR1(4));
  } else {
   hw_state->cfgcr0 = I915_READ(ICL_DPLL_CFGCR0(id));
   hw_state->cfgcr1 = I915_READ(ICL_DPLL_CFGCR1(id));
  }
 }

 ret = 1;
out:
 intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
 return ret;
}
