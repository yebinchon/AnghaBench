#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int dpll; int fp0; int fp1; } ;
struct dpll {int m; int n; int p1; int p2; } ;
struct intel_crtc_state {int pixel_multiplier; TYPE_3__ dpll_hw_state; struct dpll dpll; scalar_t__ sdvo_tv_clock; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct TYPE_6__ {int lvds_ssc_freq; } ;
struct drm_i915_private {TYPE_2__ vbt; } ;
struct TYPE_8__ {int num_pipes; } ;

/* Variables and functions */
 int DPLLB_LVDS_P2_CLOCK_DIV_14 ; 
 int DPLLB_LVDS_P2_CLOCK_DIV_7 ; 
 int DPLLB_MODE_DAC_SERIAL ; 
 int DPLLB_MODE_LVDS ; 
 int DPLL_DAC_SERIAL_P2_CLOCK_DIV_10 ; 
 int DPLL_DAC_SERIAL_P2_CLOCK_DIV_5 ; 
 int DPLL_FPA01_P1_POST_DIV_SHIFT ; 
 int DPLL_FPA1_P1_POST_DIV_SHIFT ; 
 int DPLL_SDVO_HIGH_SPEED ; 
 int DPLL_VCO_ENABLE ; 
 int FP_CB_TUNE ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 TYPE_4__* FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_ANALOG ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 int /*<<< orphan*/  INTEL_OUTPUT_SDVO ; 
 int PLLB_REF_INPUT_SPREADSPECTRUMIN ; 
 int PLL_REF_INPUT_DREFCLK ; 
 int PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT ; 
 int FUNC2 (struct dpll*) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC4 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct dpll*,int) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct intel_crtc *crtc,
				  struct intel_crtc_state *crtc_state,
				  struct dpll *reduced_clock)
{
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	u32 dpll, fp, fp2;
	int factor;

	/* Enable autotuning of the PLL clock (if permissible) */
	factor = 21;
	if (FUNC4(crtc_state, INTEL_OUTPUT_LVDS)) {
		if ((FUNC6(dev_priv) &&
		     dev_priv->vbt.lvds_ssc_freq == 100000) ||
		    (FUNC0(dev_priv) &&
		     FUNC5(dev_priv)))
			factor = 25;
	} else if (crtc_state->sdvo_tv_clock) {
		factor = 20;
	}

	fp = FUNC2(&crtc_state->dpll);

	if (FUNC7(&crtc_state->dpll, factor))
		fp |= FP_CB_TUNE;

	if (reduced_clock) {
		fp2 = FUNC2(reduced_clock);

		if (reduced_clock->m < factor * reduced_clock->n)
			fp2 |= FP_CB_TUNE;
	} else {
		fp2 = fp;
	}

	dpll = 0;

	if (FUNC4(crtc_state, INTEL_OUTPUT_LVDS))
		dpll |= DPLLB_MODE_LVDS;
	else
		dpll |= DPLLB_MODE_DAC_SERIAL;

	dpll |= (crtc_state->pixel_multiplier - 1)
		<< PLL_REF_SDVO_HDMI_MULTIPLIER_SHIFT;

	if (FUNC4(crtc_state, INTEL_OUTPUT_SDVO) ||
	    FUNC4(crtc_state, INTEL_OUTPUT_HDMI))
		dpll |= DPLL_SDVO_HIGH_SPEED;

	if (FUNC3(crtc_state))
		dpll |= DPLL_SDVO_HIGH_SPEED;

	/*
	 * The high speed IO clock is only really required for
	 * SDVO/HDMI/DP, but we also enable it for CRT to make it
	 * possible to share the DPLL between CRT and HDMI. Enabling
	 * the clock needlessly does no real harm, except use up a
	 * bit of power potentially.
	 *
	 * We'll limit this to IVB with 3 pipes, since it has only two
	 * DPLLs and so DPLL sharing is the only way to get three pipes
	 * driving PCH ports at the same time. On SNB we could do this,
	 * and potentially avoid enabling the second DPLL, but it's not
	 * clear if it''s a win or loss power wise. No point in doing
	 * this on ILK at all since it has a fixed DPLL<->pipe mapping.
	 */
	if (FUNC1(dev_priv)->num_pipes == 3 &&
	    FUNC4(crtc_state, INTEL_OUTPUT_ANALOG))
		dpll |= DPLL_SDVO_HIGH_SPEED;

	/* compute bitmask from p1 value */
	dpll |= (1 << (crtc_state->dpll.p1 - 1)) << DPLL_FPA01_P1_POST_DIV_SHIFT;
	/* also FPA1 */
	dpll |= (1 << (crtc_state->dpll.p1 - 1)) << DPLL_FPA1_P1_POST_DIV_SHIFT;

	switch (crtc_state->dpll.p2) {
	case 5:
		dpll |= DPLL_DAC_SERIAL_P2_CLOCK_DIV_5;
		break;
	case 7:
		dpll |= DPLLB_LVDS_P2_CLOCK_DIV_7;
		break;
	case 10:
		dpll |= DPLL_DAC_SERIAL_P2_CLOCK_DIV_10;
		break;
	case 14:
		dpll |= DPLLB_LVDS_P2_CLOCK_DIV_14;
		break;
	}

	if (FUNC4(crtc_state, INTEL_OUTPUT_LVDS) &&
	    FUNC6(dev_priv))
		dpll |= PLLB_REF_INPUT_SPREADSPECTRUMIN;
	else
		dpll |= PLL_REF_INPUT_DREFCLK;

	dpll |= DPLL_VCO_ENABLE;

	crtc_state->dpll_hw_state.dpll = dpll;
	crtc_state->dpll_hw_state.fp0 = fp;
	crtc_state->dpll_hw_state.fp1 = fp2;
}