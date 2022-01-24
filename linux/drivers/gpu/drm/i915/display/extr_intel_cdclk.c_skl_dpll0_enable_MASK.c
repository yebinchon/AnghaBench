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
struct TYPE_3__ {int vco; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_CTRL1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_1080 ; 
 int /*<<< orphan*/  DPLL_CTRL1_LINK_RATE_810 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  LCPLL1_CTL ; 
 int LCPLL_PLL_ENABLE ; 
 int /*<<< orphan*/  LCPLL_PLL_LOCK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKL_DPLL0 ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC12(struct drm_i915_private *dev_priv, int vco)
{
	u32 val;

	FUNC9(vco != 8100000 && vco != 8640000);

	/*
	 * We always enable DPLL0 with the lowest link rate possible, but still
	 * taking into account the VCO required to operate the eDP panel at the
	 * desired frequency. The usual DP link rates operate with a VCO of
	 * 8100 while the eDP 1.4 alternate link rates need a VCO of 8640.
	 * The modeset code is responsible for the selection of the exact link
	 * rate later on, with the constraint of choosing a frequency that
	 * works with vco.
	 */
	val = FUNC6(DPLL_CTRL1);

	val &= ~(FUNC0(SKL_DPLL0) | FUNC4(SKL_DPLL0) |
		 FUNC2(SKL_DPLL0));
	val |= FUNC3(SKL_DPLL0);
	if (vco == 8640000)
		val |= FUNC1(DPLL_CTRL1_LINK_RATE_1080,
					    SKL_DPLL0);
	else
		val |= FUNC1(DPLL_CTRL1_LINK_RATE_810,
					    SKL_DPLL0);

	FUNC7(DPLL_CTRL1, val);
	FUNC8(DPLL_CTRL1);

	FUNC7(LCPLL1_CTL, FUNC6(LCPLL1_CTL) | LCPLL_PLL_ENABLE);

	if (FUNC10(dev_priv, LCPLL1_CTL, LCPLL_PLL_LOCK, 5))
		FUNC5("DPLL0 not locked\n");

	dev_priv->cdclk.hw.vco = vco;

	/* We'll want to keep using the current vco from now on. */
	FUNC11(dev_priv, vco);
}