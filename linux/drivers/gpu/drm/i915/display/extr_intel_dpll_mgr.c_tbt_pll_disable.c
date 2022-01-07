
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_shared_dpll {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int TBT_PLL_ENABLE ;
 int icl_pll_disable (struct drm_i915_private*,struct intel_shared_dpll*,int ) ;

__attribute__((used)) static void tbt_pll_disable(struct drm_i915_private *dev_priv,
       struct intel_shared_dpll *pll)
{
 icl_pll_disable(dev_priv, pll, TBT_PLL_ENABLE);
}
