
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int CNL_DPLL_ENABLE (int const) ;
 int DRM_ERROR (char*,int const) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PLL_ENABLE ;
 int PLL_LOCK ;
 int PLL_POWER_ENABLE ;
 int PLL_POWER_STATE ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static void cnl_ddi_pll_disable(struct drm_i915_private *dev_priv,
    struct intel_shared_dpll *pll)
{
 const enum intel_dpll_id id = pll->info->id;
 u32 val;
 val = I915_READ(CNL_DPLL_ENABLE(id));
 val &= ~PLL_ENABLE;
 I915_WRITE(CNL_DPLL_ENABLE(id), val);


 if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id), PLL_LOCK, 5))
  DRM_ERROR("PLL %d locked\n", id);
 val = I915_READ(CNL_DPLL_ENABLE(id));
 val &= ~PLL_POWER_ENABLE;
 I915_WRITE(CNL_DPLL_ENABLE(id), val);


 if (intel_de_wait_for_clear(dev_priv, CNL_DPLL_ENABLE(id),
        PLL_POWER_STATE, 5))
  DRM_ERROR("PLL %d Power not disabled\n", id);
}
