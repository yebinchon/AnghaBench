
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dpll; } ;
struct TYPE_6__ {TYPE_2__ hw_state; } ;
struct intel_shared_dpll {TYPE_3__ state; TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_4__ {int id; } ;


 int I915_WRITE (int ,int ) ;
 int PCH_DPLL (int const) ;
 int POSTING_READ (int ) ;
 int ibx_assert_pch_refclk_enabled (struct drm_i915_private*) ;
 int udelay (int) ;

__attribute__((used)) static void ibx_pch_dpll_enable(struct drm_i915_private *dev_priv,
    struct intel_shared_dpll *pll)
{
 const enum intel_dpll_id id = pll->info->id;


 ibx_assert_pch_refclk_enabled(dev_priv);

 I915_WRITE(PCH_DPLL(id), pll->state.hw_state.dpll);


 POSTING_READ(PCH_DPLL(id));
 udelay(150);






 I915_WRITE(PCH_DPLL(id), pll->state.hw_state.dpll);
 POSTING_READ(PCH_DPLL(id));
 udelay(200);
}
