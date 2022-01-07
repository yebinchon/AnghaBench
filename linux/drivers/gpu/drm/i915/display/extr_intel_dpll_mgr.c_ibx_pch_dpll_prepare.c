
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fp1; int fp0; } ;
struct TYPE_6__ {TYPE_2__ hw_state; } ;
struct intel_shared_dpll {TYPE_3__ state; TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_4__ {int id; } ;


 int I915_WRITE (int ,int ) ;
 int PCH_FP0 (int const) ;
 int PCH_FP1 (int const) ;

__attribute__((used)) static void ibx_pch_dpll_prepare(struct drm_i915_private *dev_priv,
     struct intel_shared_dpll *pll)
{
 const enum intel_dpll_id id = pll->info->id;

 I915_WRITE(PCH_FP0(id), pll->state.hw_state.fp0);
 I915_WRITE(PCH_FP1(id), pll->state.hw_state.fp1);
}
