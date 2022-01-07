
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_dpll_hw_state {int cfgcr0; void* cfgcr1; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int CNL_DPLL_CFGCR0 (int const) ;
 int CNL_DPLL_CFGCR1 (int const) ;
 int CNL_DPLL_ENABLE (int const) ;
 int DPLL_CFGCR0_HDMI_MODE ;
 void* I915_READ (int ) ;
 int PLL_ENABLE ;
 int POWER_DOMAIN_DISPLAY_CORE ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static bool cnl_ddi_pll_get_hw_state(struct drm_i915_private *dev_priv,
         struct intel_shared_dpll *pll,
         struct intel_dpll_hw_state *hw_state)
{
 const enum intel_dpll_id id = pll->info->id;
 intel_wakeref_t wakeref;
 u32 val;
 bool ret;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           POWER_DOMAIN_DISPLAY_CORE);
 if (!wakeref)
  return 0;

 ret = 0;

 val = I915_READ(CNL_DPLL_ENABLE(id));
 if (!(val & PLL_ENABLE))
  goto out;

 val = I915_READ(CNL_DPLL_CFGCR0(id));
 hw_state->cfgcr0 = val;


 if (val & DPLL_CFGCR0_HDMI_MODE) {
  hw_state->cfgcr1 = I915_READ(CNL_DPLL_CFGCR1(id));
 }
 ret = 1;

out:
 intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);

 return ret;
}
