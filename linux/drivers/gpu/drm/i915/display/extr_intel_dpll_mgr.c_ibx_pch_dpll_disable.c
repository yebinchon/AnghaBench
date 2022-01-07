
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;


 int I915_WRITE (int ,int ) ;
 int PCH_DPLL (int const) ;
 int POSTING_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static void ibx_pch_dpll_disable(struct drm_i915_private *dev_priv,
     struct intel_shared_dpll *pll)
{
 const enum intel_dpll_id id = pll->info->id;

 I915_WRITE(PCH_DPLL(id), 0);
 POSTING_READ(PCH_DPLL(id));
 udelay(200);
}
