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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_VCEPLL_FUNC_CNTL ; 
 int /*<<< orphan*/  CG_VCEPLL_FUNC_CNTL_2 ; 
 int /*<<< orphan*/  CG_VCEPLL_FUNC_CNTL_3 ; 
 int /*<<< orphan*/  CG_VCEPLL_FUNC_CNTL_5 ; 
 int /*<<< orphan*/  CG_VCEPLL_SPREAD_SPECTRUM ; 
 int FUNC0 (int) ; 
 int ECCLK_SRC_SEL_MASK ; 
 int FUNC1 (int) ; 
 int EVCLK_SRC_SEL_MASK ; 
 int RESET_ANTI_MUX_MASK ; 
 int SSEN_MASK ; 
 int VCEPLL_BYPASS_EN_MASK ; 
 int FUNC2 (unsigned int) ; 
 int VCEPLL_FB_DIV_MASK ; 
 int FUNC3 (unsigned int) ; 
 int VCEPLL_PDIV_A_MASK ; 
 int FUNC4 (unsigned int) ; 
 int VCEPLL_PDIV_B_MASK ; 
 int VCEPLL_REF_DIV_MASK ; 
 int VCEPLL_RESET_MASK ; 
 int VCEPLL_SLEEP_MASK ; 
 int VCEPLL_VCO_MODE_MASK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC8 (struct radeon_device*) ; 

int FUNC9(struct radeon_device *rdev, u32 evclk, u32 ecclk)
{
	unsigned fb_div = 0, evclk_div = 0, ecclk_div = 0;
	int r;

	/* bypass evclk and ecclk with bclk */
	FUNC5(CG_VCEPLL_FUNC_CNTL_2,
		     FUNC1(1) | FUNC0(1),
		     ~(EVCLK_SRC_SEL_MASK | ECCLK_SRC_SEL_MASK));

	/* put PLL in bypass mode */
	FUNC5(CG_VCEPLL_FUNC_CNTL, VCEPLL_BYPASS_EN_MASK,
		     ~VCEPLL_BYPASS_EN_MASK);

	if (!evclk || !ecclk) {
		/* keep the Bypass mode, put PLL to sleep */
		FUNC5(CG_VCEPLL_FUNC_CNTL, VCEPLL_SLEEP_MASK,
			     ~VCEPLL_SLEEP_MASK);
		return 0;
	}

	r = FUNC7(rdev, evclk, ecclk, 125000, 250000,
					  16384, 0x03FFFFFF, 0, 128, 5,
					  &fb_div, &evclk_div, &ecclk_div);
	if (r)
		return r;

	/* set RESET_ANTI_MUX to 0 */
	FUNC5(CG_VCEPLL_FUNC_CNTL_5, 0, ~RESET_ANTI_MUX_MASK);

	/* set VCO_MODE to 1 */
	FUNC5(CG_VCEPLL_FUNC_CNTL, VCEPLL_VCO_MODE_MASK,
		     ~VCEPLL_VCO_MODE_MASK);

	/* toggle VCEPLL_SLEEP to 1 then back to 0 */
	FUNC5(CG_VCEPLL_FUNC_CNTL, VCEPLL_SLEEP_MASK,
		     ~VCEPLL_SLEEP_MASK);
	FUNC5(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_SLEEP_MASK);

	/* deassert VCEPLL_RESET */
	FUNC5(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_RESET_MASK);

	FUNC6(1);

	r = FUNC8(rdev);
	if (r)
		return r;

	/* assert VCEPLL_RESET again */
	FUNC5(CG_VCEPLL_FUNC_CNTL, VCEPLL_RESET_MASK, ~VCEPLL_RESET_MASK);

	/* disable spread spectrum. */
	FUNC5(CG_VCEPLL_SPREAD_SPECTRUM, 0, ~SSEN_MASK);

	/* set feedback divider */
	FUNC5(CG_VCEPLL_FUNC_CNTL_3, FUNC2(fb_div), ~VCEPLL_FB_DIV_MASK);

	/* set ref divider to 0 */
	FUNC5(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_REF_DIV_MASK);

	/* set PDIV_A and PDIV_B */
	FUNC5(CG_VCEPLL_FUNC_CNTL_2,
		     FUNC3(evclk_div) | FUNC4(ecclk_div),
		     ~(VCEPLL_PDIV_A_MASK | VCEPLL_PDIV_B_MASK));

	/* give the PLL some time to settle */
	FUNC6(15);

	/* deassert PLL_RESET */
	FUNC5(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_RESET_MASK);

	FUNC6(15);

	/* switch from bypass mode to normal mode */
	FUNC5(CG_VCEPLL_FUNC_CNTL, 0, ~VCEPLL_BYPASS_EN_MASK);

	r = FUNC8(rdev);
	if (r)
		return r;

	/* switch VCLK and DCLK selection */
	FUNC5(CG_VCEPLL_FUNC_CNTL_2,
		     FUNC1(16) | FUNC0(16),
		     ~(EVCLK_SRC_SEL_MASK | ECCLK_SRC_SEL_MASK));

	FUNC6(100);

	return 0;
}