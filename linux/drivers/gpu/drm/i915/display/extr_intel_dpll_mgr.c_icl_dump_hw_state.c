
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dpll_hw_state {int mg_pll_tdc_coldst_bias; int mg_pll_bias; int mg_pll_ssc; int mg_pll_frac_lock; int mg_pll_lf; int mg_pll_div1; int mg_pll_div0; int mg_clktop2_hsclkctl; int mg_clktop2_coreclkctl1; int mg_refclkin_ctl; int cfgcr1; int cfgcr0; } ;
struct drm_i915_private {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void icl_dump_hw_state(struct drm_i915_private *dev_priv,
         const struct intel_dpll_hw_state *hw_state)
{
 DRM_DEBUG_KMS("dpll_hw_state: cfgcr0: 0x%x, cfgcr1: 0x%x, "
        "mg_refclkin_ctl: 0x%x, hg_clktop2_coreclkctl1: 0x%x, "
        "mg_clktop2_hsclkctl: 0x%x, mg_pll_div0: 0x%x, "
        "mg_pll_div2: 0x%x, mg_pll_lf: 0x%x, "
        "mg_pll_frac_lock: 0x%x, mg_pll_ssc: 0x%x, "
        "mg_pll_bias: 0x%x, mg_pll_tdc_coldst_bias: 0x%x\n",
        hw_state->cfgcr0, hw_state->cfgcr1,
        hw_state->mg_refclkin_ctl,
        hw_state->mg_clktop2_coreclkctl1,
        hw_state->mg_clktop2_hsclkctl,
        hw_state->mg_pll_div0,
        hw_state->mg_pll_div1,
        hw_state->mg_pll_lf,
        hw_state->mg_pll_frac_lock,
        hw_state->mg_pll_ssc,
        hw_state->mg_pll_bias,
        hw_state->mg_pll_tdc_coldst_bias);
}
