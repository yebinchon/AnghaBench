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
struct TYPE_4__ {int dpll; } ;
struct dpll {int p1; int p2; } ;
struct intel_crtc_state {TYPE_2__ dpll_hw_state; struct dpll dpll; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct intel_crtc {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int DPLL_DVO_2X_MODE ; 
 int DPLL_FPA01_P1_POST_DIV_SHIFT ; 
 int DPLL_VCO_ENABLE ; 
 int DPLL_VGA_MODE_DIS ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DVO ; 
 int /*<<< orphan*/  INTEL_OUTPUT_LVDS ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int PLLB_REF_INPUT_SPREADSPECTRUMIN ; 
 int PLL_P1_DIVIDE_BY_TWO ; 
 int PLL_P2_DIVIDE_BY_4 ; 
 int PLL_REF_INPUT_DREFCLK ; 
 int /*<<< orphan*/  FUNC1 (struct intel_crtc*,struct intel_crtc_state*,struct dpll*) ; 
 scalar_t__ FUNC2 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC4 (struct drm_device*) ; 

__attribute__((used)) static void FUNC5(struct intel_crtc *crtc,
			      struct intel_crtc_state *crtc_state,
			      struct dpll *reduced_clock)
{
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC4(dev);
	u32 dpll;
	struct dpll *clock = &crtc_state->dpll;

	FUNC1(crtc, crtc_state, reduced_clock);

	dpll = DPLL_VGA_MODE_DIS;

	if (FUNC2(crtc_state, INTEL_OUTPUT_LVDS)) {
		dpll |= (1 << (clock->p1 - 1)) << DPLL_FPA01_P1_POST_DIV_SHIFT;
	} else {
		if (clock->p1 == 2)
			dpll |= PLL_P1_DIVIDE_BY_TWO;
		else
			dpll |= (clock->p1 - 2) << DPLL_FPA01_P1_POST_DIV_SHIFT;
		if (clock->p2 == 4)
			dpll |= PLL_P2_DIVIDE_BY_4;
	}

	/*
	 * Bspec:
	 * "[Almador Errata}: For the correct operation of the muxed DVO pins
	 *  (GDEVSELB/I2Cdata, GIRDBY/I2CClk) and (GFRAMEB/DVI_Data,
	 *  GTRDYB/DVI_Clk): Bit 31 (DPLL VCO Enable) and Bit 30 (2X Clock
	 *  Enable) must be set to “1” in both the DPLL A Control Register
	 *  (06014h-06017h) and DPLL B Control Register (06018h-0601Bh)."
	 *
	 * For simplicity We simply keep both bits always enabled in
	 * both DPLLS. The spec says we should disable the DVO 2X clock
	 * when not needed, but this seems to work fine in practice.
	 */
	if (FUNC0(dev_priv) ||
	    FUNC2(crtc_state, INTEL_OUTPUT_DVO))
		dpll |= DPLL_DVO_2X_MODE;

	if (FUNC2(crtc_state, INTEL_OUTPUT_LVDS) &&
	    FUNC3(dev_priv))
		dpll |= PLLB_REF_INPUT_SPREADSPECTRUMIN;
	else
		dpll |= PLL_REF_INPUT_DREFCLK;

	dpll |= DPLL_VCO_ENABLE;
	crtc_state->dpll_hw_state.dpll = dpll;
}