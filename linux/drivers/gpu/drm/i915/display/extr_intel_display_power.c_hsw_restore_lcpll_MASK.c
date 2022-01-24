#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int D_COMP_COMP_DISABLE ; 
 int D_COMP_COMP_FORCE ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int LCPLL_CD_SOURCE_FCLK ; 
 int LCPLL_CD_SOURCE_FCLK_DONE ; 
 int /*<<< orphan*/  LCPLL_CTL ; 
 int LCPLL_PLL_DISABLE ; 
 int LCPLL_PLL_LOCK ; 
 int LCPLL_POWER_DOWN_ALLOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (int,int) ; 

__attribute__((used)) static void FUNC12(struct drm_i915_private *dev_priv)
{
	u32 val;

	val = FUNC1(LCPLL_CTL);

	if ((val & (LCPLL_PLL_LOCK | LCPLL_PLL_DISABLE | LCPLL_CD_SOURCE_FCLK |
		    LCPLL_POWER_DOWN_ALLOW)) == LCPLL_PLL_LOCK)
		return;

	/*
	 * Make sure we're not on PC8 state before disabling PC8, otherwise
	 * we'll hang the machine. To prevent PC8 state, just enable force_wake.
	 */
	FUNC8(&dev_priv->uncore, FORCEWAKE_ALL);

	if (val & LCPLL_POWER_DOWN_ALLOW) {
		val &= ~LCPLL_POWER_DOWN_ALLOW;
		FUNC2(LCPLL_CTL, val);
		FUNC3(LCPLL_CTL);
	}

	val = FUNC4(dev_priv);
	val |= D_COMP_COMP_FORCE;
	val &= ~D_COMP_COMP_DISABLE;
	FUNC5(dev_priv, val);

	val = FUNC1(LCPLL_CTL);
	val &= ~LCPLL_PLL_DISABLE;
	FUNC2(LCPLL_CTL, val);

	if (FUNC6(dev_priv, LCPLL_CTL, LCPLL_PLL_LOCK, 5))
		FUNC0("LCPLL not locked yet\n");

	if (val & LCPLL_CD_SOURCE_FCLK) {
		val = FUNC1(LCPLL_CTL);
		val &= ~LCPLL_CD_SOURCE_FCLK;
		FUNC2(LCPLL_CTL, val);

		if (FUNC11((FUNC1(LCPLL_CTL) &
				 LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
			FUNC0("Switching back to LCPLL failed\n");
	}

	FUNC9(&dev_priv->uncore, FORCEWAKE_ALL);

	FUNC10(dev_priv);
	FUNC7(&dev_priv->cdclk.hw, "Current CDCLK");
}