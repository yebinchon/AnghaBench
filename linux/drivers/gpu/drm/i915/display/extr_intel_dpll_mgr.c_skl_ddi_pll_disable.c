
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_dpll_regs {int ctl; } ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int LCPLL_PLL_ENABLE ;
 int POSTING_READ (int ) ;
 struct skl_dpll_regs* skl_dpll_regs ;

__attribute__((used)) static void skl_ddi_pll_disable(struct drm_i915_private *dev_priv,
    struct intel_shared_dpll *pll)
{
 const struct skl_dpll_regs *regs = skl_dpll_regs;
 const enum intel_dpll_id id = pll->info->id;


 I915_WRITE(regs[id].ctl,
     I915_READ(regs[id].ctl) & ~LCPLL_PLL_ENABLE);
 POSTING_READ(regs[id].ctl);
}
