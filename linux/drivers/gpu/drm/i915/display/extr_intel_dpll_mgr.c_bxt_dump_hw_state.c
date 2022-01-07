
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dpll_hw_state {int pcsdw12; int pll10; int pll9; int pll8; int pll6; int pll3; int pll2; int pll1; int pll0; int ebb4; int ebb0; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void bxt_dump_hw_state(struct drm_i915_private *dev_priv,
         const struct intel_dpll_hw_state *hw_state)
{
 DRM_DEBUG_KMS("dpll_hw_state: ebb0: 0x%x, ebb4: 0x%x,"
        "pll0: 0x%x, pll1: 0x%x, pll2: 0x%x, pll3: 0x%x, "
        "pll6: 0x%x, pll8: 0x%x, pll9: 0x%x, pll10: 0x%x, pcsdw12: 0x%x\n",
        hw_state->ebb0,
        hw_state->ebb4,
        hw_state->pll0,
        hw_state->pll1,
        hw_state->pll2,
        hw_state->pll3,
        hw_state->pll6,
        hw_state->pll8,
        hw_state->pll9,
        hw_state->pll10,
        hw_state->pcsdw12);
}
