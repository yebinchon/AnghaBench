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
struct intel_cdclk_state {scalar_t__ vco; int /*<<< orphan*/  cdclk; int /*<<< orphan*/  voltage_level; int /*<<< orphan*/  ref; int /*<<< orphan*/  bypass; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
#define  BXT_CDCLK_CD2X_DIV_SEL_1 129 
#define  BXT_CDCLK_CD2X_DIV_SEL_2 128 
 int BXT_CDCLK_CD2X_DIV_SEL_MASK ; 
 int /*<<< orphan*/  CDCLK_CTL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_cdclk_state*) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
			 struct intel_cdclk_state *cdclk_state)
{
	u32 divider;
	int div;

	FUNC4(dev_priv, cdclk_state);

	cdclk_state->cdclk = cdclk_state->bypass = cdclk_state->ref;

	if (cdclk_state->vco == 0)
		goto out;

	divider = FUNC1(CDCLK_CTL) & BXT_CDCLK_CD2X_DIV_SEL_MASK;

	switch (divider) {
	case BXT_CDCLK_CD2X_DIV_SEL_1:
		div = 2;
		break;
	case BXT_CDCLK_CD2X_DIV_SEL_2:
		div = 4;
		break;
	default:
		FUNC2(divider);
		return;
	}

	cdclk_state->cdclk = FUNC0(cdclk_state->vco, div);

 out:
	/*
	 * Can't read this out :( Let's assume it's
	 * at least what the CDCLK frequency requires.
	 */
	cdclk_state->voltage_level =
		FUNC3(cdclk_state->cdclk);
}