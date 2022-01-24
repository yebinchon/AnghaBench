#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct intel_crtc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct dpll {int m1; int m2; int p1; int p2; int n; int /*<<< orphan*/  dot; int /*<<< orphan*/  vco; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DPLL_DVO_2X_MODE ; 
 int DPLL_FPA01_P1_POST_DIV_SHIFT ; 
 int DPLL_VCO_ENABLE ; 
 int DPLL_VGA_MODE_DIS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int PIPECONF_ENABLE ; 
 int PIPECONF_PROGRESSIVE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int PLL_P2_DIVIDE_BY_4 ; 
 int PLL_REF_INPUT_DREFCLK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int,struct dpll*) ; 
 int FUNC16 (struct dpll*) ; 
 struct intel_crtc* FUNC17 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

void FUNC21(struct drm_i915_private *dev_priv, enum pipe pipe)
{
	struct intel_crtc *crtc = FUNC17(dev_priv, pipe);
	/* 640x480@60Hz, ~25175 kHz */
	struct dpll clock = {
		.m1 = 18,
		.m2 = 7,
		.p1 = 13,
		.p2 = 4,
		.n = 2,
	};
	u32 dpll, fp;
	int i;

	FUNC14(FUNC15(48000, &clock) != 25154);

	FUNC1("enabling pipe %c due to force quirk (vco=%d dot=%d)\n",
		      FUNC19(pipe), clock.vco, clock.dot);

	fp = FUNC16(&clock);
	dpll = DPLL_DVO_2X_MODE |
		DPLL_VGA_MODE_DIS |
		((clock.p1 - 2) << DPLL_FPA01_P1_POST_DIV_SHIFT) |
		PLL_P2_DIVIDE_BY_4 |
		PLL_REF_INPUT_DREFCLK |
		DPLL_VCO_ENABLE;

	FUNC7(FUNC2(pipe), fp);
	FUNC7(FUNC3(pipe), fp);

	FUNC7(FUNC6(pipe), (640 - 1) | ((800 - 1) << 16));
	FUNC7(FUNC4(pipe), (640 - 1) | ((800 - 1) << 16));
	FUNC7(FUNC5(pipe), (656 - 1) | ((752 - 1) << 16));
	FUNC7(FUNC13(pipe), (480 - 1) | ((525 - 1) << 16));
	FUNC7(FUNC11(pipe), (480 - 1) | ((525 - 1) << 16));
	FUNC7(FUNC12(pipe), (490 - 1) | ((492 - 1) << 16));
	FUNC7(FUNC9(pipe), ((640 - 1) << 16) | (480 - 1));

	/*
	 * Apparently we need to have VGA mode enabled prior to changing
	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
	 * dividers, even though the register value does change.
	 */
	FUNC7(FUNC0(pipe), dpll & ~DPLL_VGA_MODE_DIS);
	FUNC7(FUNC0(pipe), dpll);

	/* Wait for the clocks to stabilize. */
	FUNC10(FUNC0(pipe));
	FUNC20(150);

	/* The pixel multiplier can only be updated once the
	 * DPLL is enabled and the clocks are stable.
	 *
	 * So write it again.
	 */
	FUNC7(FUNC0(pipe), dpll);

	/* We do this three times for luck */
	for (i = 0; i < 3 ; i++) {
		FUNC7(FUNC0(pipe), dpll);
		FUNC10(FUNC0(pipe));
		FUNC20(150); /* wait for warmup */
	}

	FUNC7(FUNC8(pipe), PIPECONF_ENABLE | PIPECONF_PROGRESSIVE);
	FUNC10(FUNC8(pipe));

	FUNC18(crtc);
}