
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dpll_hw_state {int fp1; int fp0; int dpll_md; int dpll; } ;
struct drm_i915_private {TYPE_1__* dpll_mgr; } ;
struct TYPE_2__ {int (* dump_hw_state ) (struct drm_i915_private*,struct intel_dpll_hw_state const*) ;} ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ) ;
 int stub1 (struct drm_i915_private*,struct intel_dpll_hw_state const*) ;

void intel_dpll_dump_hw_state(struct drm_i915_private *dev_priv,
         const struct intel_dpll_hw_state *hw_state)
{
 if (dev_priv->dpll_mgr) {
  dev_priv->dpll_mgr->dump_hw_state(dev_priv, hw_state);
 } else {



  DRM_DEBUG_KMS("dpll_hw_state: dpll: 0x%x, dpll_md: 0x%x, "
         "fp0: 0x%x, fp1: 0x%x\n",
         hw_state->dpll,
         hw_state->dpll_md,
         hw_state->fp0,
         hw_state->fp1);
 }
}
