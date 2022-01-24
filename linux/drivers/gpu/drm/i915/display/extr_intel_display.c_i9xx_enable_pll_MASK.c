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
struct TYPE_3__ {int dpll; int dpll_md; } ;
struct intel_crtc_state {TYPE_1__ dpll_hw_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DPLL_VGA_MODE_DIS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct intel_crtc *crtc,
			    const struct intel_crtc_state *crtc_state)
{
	struct drm_i915_private *dev_priv = FUNC8(crtc->base.dev);
	i915_reg_t reg = FUNC0(crtc->pipe);
	u32 dpll = crtc_state->dpll_hw_state.dpll;
	int i;

	FUNC6(dev_priv, crtc->pipe);

	/* PLL is protected by panel, make sure we can write it */
	if (FUNC7(dev_priv))
		FUNC5(dev_priv, crtc->pipe);

	/*
	 * Apparently we need to have VGA mode enabled prior to changing
	 * the P1/P2 dividers. Otherwise the DPLL will keep using the old
	 * dividers, even though the register value does change.
	 */
	FUNC2(reg, dpll & ~DPLL_VGA_MODE_DIS);
	FUNC2(reg, dpll);

	/* Wait for the clocks to stabilize. */
	FUNC4(reg);
	FUNC9(150);

	if (FUNC3(dev_priv) >= 4) {
		FUNC2(FUNC1(crtc->pipe),
			   crtc_state->dpll_hw_state.dpll_md);
	} else {
		/* The pixel multiplier can only be updated once the
		 * DPLL is enabled and the clocks are stable.
		 *
		 * So write it again.
		 */
		FUNC2(reg, dpll);
	}

	/* We do this three times for luck */
	for (i = 0; i < 3; i++) {
		FUNC2(reg, dpll);
		FUNC4(reg);
		FUNC9(150); /* wait for warmup */
	}
}