
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_dpll_hw_state {int wrpll; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int I915_READ (int ) ;
 int POWER_DOMAIN_DISPLAY_CORE ;
 int WRPLL_CTL (int const) ;
 int WRPLL_PLL_ENABLE ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static bool hsw_ddi_wrpll_get_hw_state(struct drm_i915_private *dev_priv,
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

 val = I915_READ(WRPLL_CTL(id));
 hw_state->wrpll = val;

 intel_display_power_put(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);

 return val & WRPLL_PLL_ENABLE;
}
