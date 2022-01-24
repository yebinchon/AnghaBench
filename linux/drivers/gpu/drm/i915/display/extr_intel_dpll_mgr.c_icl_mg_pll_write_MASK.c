#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_dpll_hw_state {int mg_refclkin_ctl; int mg_clktop2_coreclkctl1; int mg_clktop2_hsclkctl; int mg_pll_div0; int mg_pll_div1; int mg_pll_lf; int mg_pll_frac_lock; int mg_pll_ssc; int mg_pll_bias_mask; int mg_pll_bias; int mg_pll_tdc_coldst_bias_mask; int mg_pll_tdc_coldst_bias; } ;
struct TYPE_3__ {struct intel_dpll_hw_state hw_state; } ;
struct intel_shared_dpll {TYPE_2__* info; TYPE_1__ state; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum tc_port { ____Placeholder_tc_port } tc_port ;
struct TYPE_4__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK ; 
 int MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK ; 
 int MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK ; 
 int MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int MG_REFCLKIN_CTL_OD_2_MUX_MASK ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct drm_i915_private *dev_priv,
			     struct intel_shared_dpll *pll)
{
	struct intel_dpll_hw_state *hw_state = &pll->state.hw_state;
	enum tc_port tc_port = FUNC13(pll->info->id);
	u32 val;

	/*
	 * Some of the following registers have reserved fields, so program
	 * these with RMW based on a mask. The mask can be fixed or generated
	 * during the calc/readout phase if the mask depends on some other HW
	 * state like refclk, see icl_calc_mg_pll_state().
	 */
	val = FUNC0(FUNC11(tc_port));
	val &= ~MG_REFCLKIN_CTL_OD_2_MUX_MASK;
	val |= hw_state->mg_refclkin_ctl;
	FUNC1(FUNC11(tc_port), val);

	val = FUNC0(FUNC2(tc_port));
	val &= ~MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO_MASK;
	val |= hw_state->mg_clktop2_coreclkctl1;
	FUNC1(FUNC2(tc_port), val);

	val = FUNC0(FUNC3(tc_port));
	val &= ~(MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL_MASK |
		 MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL_MASK |
		 MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_MASK |
		 MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO_MASK);
	val |= hw_state->mg_clktop2_hsclkctl;
	FUNC1(FUNC3(tc_port), val);

	FUNC1(FUNC5(tc_port), hw_state->mg_pll_div0);
	FUNC1(FUNC6(tc_port), hw_state->mg_pll_div1);
	FUNC1(FUNC8(tc_port), hw_state->mg_pll_lf);
	FUNC1(FUNC7(tc_port), hw_state->mg_pll_frac_lock);
	FUNC1(FUNC9(tc_port), hw_state->mg_pll_ssc);

	val = FUNC0(FUNC4(tc_port));
	val &= ~hw_state->mg_pll_bias_mask;
	val |= hw_state->mg_pll_bias;
	FUNC1(FUNC4(tc_port), val);

	val = FUNC0(FUNC10(tc_port));
	val &= ~hw_state->mg_pll_tdc_coldst_bias_mask;
	val |= hw_state->mg_pll_tdc_coldst_bias;
	FUNC1(FUNC10(tc_port), val);

	FUNC12(FUNC10(tc_port));
}