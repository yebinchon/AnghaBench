
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {int id; } ;


 int MG_PLL_ENABLE (int ) ;
 int icl_pll_disable (struct drm_i915_private*,struct intel_shared_dpll*,int ) ;
 int icl_pll_id_to_tc_port (int ) ;

__attribute__((used)) static void mg_pll_disable(struct drm_i915_private *dev_priv,
      struct intel_shared_dpll *pll)
{
 i915_reg_t enable_reg =
  MG_PLL_ENABLE(icl_pll_id_to_tc_port(pll->info->id));

 icl_pll_disable(dev_priv, pll, enable_reg);
}
