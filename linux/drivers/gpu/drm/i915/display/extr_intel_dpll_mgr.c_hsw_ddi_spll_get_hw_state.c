
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_shared_dpll {int dummy; } ;
struct intel_dpll_hw_state {int spll; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;


 int I915_READ (int ) ;
 int POWER_DOMAIN_DISPLAY_CORE ;
 int SPLL_CTL ;
 int SPLL_PLL_ENABLE ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static bool hsw_ddi_spll_get_hw_state(struct drm_i915_private *dev_priv,
          struct intel_shared_dpll *pll,
          struct intel_dpll_hw_state *hw_state)
{
 intel_wakeref_t wakeref;
 u32 val;

 wakeref = intel_display_power_get_if_enabled(dev_priv,
           POWER_DOMAIN_DISPLAY_CORE);
 if (!wakeref)
  return 0;

 val = I915_READ(SPLL_CTL);
 hw_state->spll = val;

 intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);

 return val & SPLL_PLL_ENABLE;
}
