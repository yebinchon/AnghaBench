
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dpll_hw_state {int cfgcr2; int cfgcr1; int ctrl1; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ) ;

__attribute__((used)) static void skl_dump_hw_state(struct drm_i915_private *dev_priv,
         const struct intel_dpll_hw_state *hw_state)
{
 DRM_DEBUG_KMS("dpll_hw_state: "
        "ctrl1: 0x%x, cfgcr1: 0x%x, cfgcr2: 0x%x\n",
        hw_state->ctrl1,
        hw_state->cfgcr1,
        hw_state->cfgcr2);
}
