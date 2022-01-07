
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_dpll_hw_state {int mg_refclkin_ctl; int mg_clktop2_coreclkctl1; int mg_clktop2_hsclkctl; int mg_pll_div0; int mg_pll_div1; int mg_pll_lf; int mg_pll_frac_lock; int mg_pll_ssc; int mg_pll_bias_mask; int mg_pll_bias; int mg_pll_tdc_coldst_bias_mask; int mg_pll_tdc_coldst_bias; } ;
struct TYPE_3__ {struct intel_dpll_hw_state hw_state; } ;
struct intel_shared_dpll {TYPE_2__* info; TYPE_1__ state; } ;
struct drm_i915_private {int dummy; } ;
typedef enum tc_port { ____Placeholder_tc_port } tc_port ;
struct TYPE_4__ {int id; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int MG_CLKTOP2_CORECLKCTL1 (int) ;
 int MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK ;
 int MG_CLKTOP2_HSCLKCTL (int) ;
 int MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK ;
 int MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK ;
 int MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK ;
 int MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK ;
 int MG_PLL_BIAS (int) ;
 int MG_PLL_DIV0 (int) ;
 int MG_PLL_DIV1 (int) ;
 int MG_PLL_FRAC_LOCK (int) ;
 int MG_PLL_LF (int) ;
 int MG_PLL_SSC (int) ;
 int MG_PLL_TDC_COLDST_BIAS (int) ;
 int MG_REFCLKIN_CTL (int) ;
 int MG_REFCLKIN_CTL_OD_2_MUX_MASK ;
 int POSTING_READ (int ) ;
 int icl_pll_id_to_tc_port (int ) ;

__attribute__((used)) static void icl_mg_pll_write(struct drm_i915_private *dev_priv,
        struct intel_shared_dpll *pll)
{
 struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
 enum tc_port tc_port = icl_pll_id_to_tc_port(pll->info->id);
 u32 val;







 val = I915_READ(MG_REFCLKIN_CTL(tc_port));
 val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
 val |= hw_state->mg_refclkin_ctl;
 I915_WRITE(MG_REFCLKIN_CTL(tc_port), val);

 val = I915_READ(MG_CLKTOP2_CORECLKCTL1(tc_port));
 val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
 val |= hw_state->mg_clktop2_coreclkctl1;
 I915_WRITE(MG_CLKTOP2_CORECLKCTL1(tc_port), val);

 val = I915_READ(MG_CLKTOP2_HSCLKCTL(tc_port));
 val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
   MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
   MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
   MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
 val |= hw_state->mg_clktop2_hsclkctl;
 I915_WRITE(MG_CLKTOP2_HSCLKCTL(tc_port), val);

 I915_WRITE(MG_PLL_DIV0(tc_port), hw_state->mg_pll_div0);
 I915_WRITE(MG_PLL_DIV1(tc_port), hw_state->mg_pll_div1);
 I915_WRITE(MG_PLL_LF(tc_port), hw_state->mg_pll_lf);
 I915_WRITE(MG_PLL_FRAC_LOCK(tc_port), hw_state->mg_pll_frac_lock);
 I915_WRITE(MG_PLL_SSC(tc_port), hw_state->mg_pll_ssc);

 val = I915_READ(MG_PLL_BIAS(tc_port));
 val &= ~hw_state->mg_pll_bias_mask;
 val |= hw_state->mg_pll_bias;
 I915_WRITE(MG_PLL_BIAS(tc_port), val);

 val = I915_READ(MG_PLL_TDC_COLDST_BIAS(tc_port));
 val &= ~hw_state->mg_pll_tdc_coldst_bias_mask;
 val |= hw_state->mg_pll_tdc_coldst_bias;
 I915_WRITE(MG_PLL_TDC_COLDST_BIAS(tc_port), val);

 POSTING_READ(MG_PLL_TDC_COLDST_BIAS(tc_port));
}
