
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int pch_ssc_use; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int BIT (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SPLL_CTL ;
 int SPLL_PLL_ENABLE ;
 int intel_init_pch_refclk (struct drm_i915_private*) ;

__attribute__((used)) static void hsw_ddi_spll_disable(struct drm_i915_private *dev_priv,
     struct intel_shared_dpll *pll)
{
 enum intel_dpll_id id = pll->info->id;
 u32 val;

 val = I915_READ(SPLL_CTL);
 I915_WRITE(SPLL_CTL, val & ~SPLL_PLL_ENABLE);
 POSTING_READ(SPLL_CTL);





 if (dev_priv->pch_ssc_use & BIT(id))
  intel_init_pch_refclk(dev_priv);
}
