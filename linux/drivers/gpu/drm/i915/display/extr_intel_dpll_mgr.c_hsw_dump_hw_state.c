
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dpll_hw_state {int spll; int wrpll; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;

__attribute__((used)) static void hsw_dump_hw_state(struct drm_i915_private *dev_priv,
         const struct intel_dpll_hw_state *hw_state)
{
 DRM_DEBUG_KMS("dpll_hw_state: wrpll: 0x%x spll: 0x%x\n",
        hw_state->wrpll, hw_state->spll);
}
