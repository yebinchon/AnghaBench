
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_dpll_hw_state {int dpll; void* fp1; void* fp0; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int DPLL_VCO_ENABLE ;
 void* I915_READ (int ) ;
 int PCH_DPLL (int const) ;
 int PCH_FP0 (int const) ;
 int PCH_FP1 (int const) ;
 int POWER_DOMAIN_DISPLAY_CORE ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static bool ibx_pch_dpll_get_hw_state(struct drm_i915_private *dev_priv,
          struct intel_shared_dpll *pll,
          struct intel_dpll_hw_state *hw_state)
{
 const enum intel_dpll_id id = pll->info->id;
 intel_wakeref_t wakeref;
 u32 val;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           POWER_DOMAIN_DISPLAY_CORE);
 if (!wakeref)
  return 0;

 val = I915_READ(PCH_DPLL(id));
 hw_state->dpll = val;
 hw_state->fp0 = I915_READ(PCH_FP0(id));
 hw_state->fp1 = I915_READ(PCH_FP1(id));

 intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);

 return val & DPLL_VCO_ENABLE;
}
