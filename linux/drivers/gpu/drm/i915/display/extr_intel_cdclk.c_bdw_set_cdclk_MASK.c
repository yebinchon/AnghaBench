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
struct intel_cdclk_state {int cdclk; int voltage_level; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ ; 
 int /*<<< orphan*/  CDCLK_FREQ ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  HSW_PCODE_DE_WRITE_FREQ_REQ ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int LCPLL_CD2X_CLOCK_DISABLE ; 
 int LCPLL_CD_CLOCK_DISABLE ; 
 int LCPLL_CD_SOURCE_FCLK ; 
 int LCPLL_CD_SOURCE_FCLK_DONE ; 
 int LCPLL_CLK_FREQ_337_5_BDW ; 
 int LCPLL_CLK_FREQ_450 ; 
 int LCPLL_CLK_FREQ_54O_BDW ; 
 int LCPLL_CLK_FREQ_675_BDW ; 
 int LCPLL_CLK_FREQ_MASK ; 
 int /*<<< orphan*/  LCPLL_CTL ; 
 int LCPLL_PLL_DISABLE ; 
 int LCPLL_PLL_LOCK ; 
 int LCPLL_POWER_DOWN_ALLOW ; 
 int LCPLL_ROOT_CD_CLOCK_DISABLE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv,
			  const struct intel_cdclk_state *cdclk_state,
			  enum pipe pipe)
{
	int cdclk = cdclk_state->cdclk;
	u32 val;
	int ret;

	if (FUNC5((FUNC2(LCPLL_CTL) &
		  (LCPLL_PLL_DISABLE | LCPLL_PLL_LOCK |
		   LCPLL_CD_CLOCK_DISABLE | LCPLL_ROOT_CD_CLOCK_DISABLE |
		   LCPLL_CD2X_CLOCK_DISABLE | LCPLL_POWER_DOWN_ALLOW |
		   LCPLL_CD_SOURCE_FCLK)) != LCPLL_PLL_LOCK,
		 "trying to change cdclk frequency with cdclk not enabled\n"))
		return;

	ret = FUNC7(dev_priv,
				      BDW_PCODE_DISPLAY_FREQ_CHANGE_REQ, 0x0);
	if (ret) {
		FUNC1("failed to inform pcode about cdclk change\n");
		return;
	}

	val = FUNC2(LCPLL_CTL);
	val |= LCPLL_CD_SOURCE_FCLK;
	FUNC3(LCPLL_CTL, val);

	/*
	 * According to the spec, it should be enough to poll for this 1 us.
	 * However, extensive testing shows that this can take longer.
	 */
	if (FUNC8(FUNC2(LCPLL_CTL) &
			LCPLL_CD_SOURCE_FCLK_DONE, 100))
		FUNC1("Switching to FCLK failed\n");

	val = FUNC2(LCPLL_CTL);
	val &= ~LCPLL_CLK_FREQ_MASK;

	switch (cdclk) {
	default:
		FUNC4(cdclk);
		/* fall through */
	case 337500:
		val |= LCPLL_CLK_FREQ_337_5_BDW;
		break;
	case 450000:
		val |= LCPLL_CLK_FREQ_450;
		break;
	case 540000:
		val |= LCPLL_CLK_FREQ_54O_BDW;
		break;
	case 675000:
		val |= LCPLL_CLK_FREQ_675_BDW;
		break;
	}

	FUNC3(LCPLL_CTL, val);

	val = FUNC2(LCPLL_CTL);
	val &= ~LCPLL_CD_SOURCE_FCLK;
	FUNC3(LCPLL_CTL, val);

	if (FUNC8((FUNC2(LCPLL_CTL) &
			LCPLL_CD_SOURCE_FCLK_DONE) == 0, 1))
		FUNC1("Switching back to LCPLL failed\n");

	FUNC7(dev_priv, HSW_PCODE_DE_WRITE_FREQ_REQ,
				cdclk_state->voltage_level);

	FUNC3(CDCLK_FREQ, FUNC0(cdclk, 1000) - 1);

	FUNC6(dev_priv);
}