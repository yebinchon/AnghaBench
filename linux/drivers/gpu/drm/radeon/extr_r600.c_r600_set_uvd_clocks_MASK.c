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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int reference_freq; } ;
struct TYPE_4__ {TYPE_1__ spll; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ clock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_UPLL_FUNC_CNTL ; 
 int /*<<< orphan*/  CG_UPLL_FUNC_CNTL_2 ; 
 scalar_t__ CHIP_RS780 ; 
 scalar_t__ CHIP_RV670 ; 
 int FUNC0 (int) ; 
 int DCLK_SRC_SEL_MASK ; 
 int /*<<< orphan*/  GFX_MACRO_BYPASS_CNTL ; 
 int UPLL_BYPASS_CNTL ; 
 int UPLL_BYPASS_EN_MASK ; 
 int UPLL_CTLREQ_MASK ; 
 int UPLL_DIVEN2_MASK ; 
 int UPLL_DIVEN_MASK ; 
 int FUNC1 (unsigned int) ; 
 int UPLL_FB_DIV_MASK ; 
 int UPLL_REFCLK_SRC_SEL_MASK ; 
 int FUNC2 (unsigned int) ; 
 int UPLL_REF_DIV_MASK ; 
 int UPLL_RESET_MASK ; 
 int UPLL_SLEEP_MASK ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int UPLL_SW_MASK ; 
 int FUNC7 (int) ; 
 int VCLK_SRC_SEL_MASK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,unsigned int,int,int,int,int /*<<< orphan*/ ,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC11 (struct radeon_device*,int /*<<< orphan*/ ) ; 

int FUNC12(struct radeon_device *rdev, u32 vclk, u32 dclk)
{
	unsigned fb_div = 0, ref_div, vclk_div = 0, dclk_div = 0;
	int r;

	/* bypass vclk and dclk with bclk */
	FUNC8(CG_UPLL_FUNC_CNTL_2,
		 FUNC7(1) | FUNC0(1),
		 ~(VCLK_SRC_SEL_MASK | DCLK_SRC_SEL_MASK));

	/* assert BYPASS_EN, deassert UPLL_RESET, UPLL_SLEEP and UPLL_CTLREQ */
	FUNC8(CG_UPLL_FUNC_CNTL, UPLL_BYPASS_EN_MASK, ~(
		 UPLL_RESET_MASK | UPLL_SLEEP_MASK | UPLL_CTLREQ_MASK));

	if (rdev->family >= CHIP_RS780)
		FUNC8(GFX_MACRO_BYPASS_CNTL, UPLL_BYPASS_CNTL,
			 ~UPLL_BYPASS_CNTL);

	if (!vclk || !dclk) {
		/* keep the Bypass mode, put PLL to sleep */
		FUNC8(CG_UPLL_FUNC_CNTL, UPLL_SLEEP_MASK, ~UPLL_SLEEP_MASK);
		return 0;
	}

	if (rdev->clock.spll.reference_freq == 10000)
		ref_div = 34;
	else
		ref_div = 4;

	r = FUNC10(rdev, vclk, dclk, 50000, 160000,
					  ref_div + 1, 0xFFF, 2, 30, ~0,
					  &fb_div, &vclk_div, &dclk_div);
	if (r)
		return r;

	if (rdev->family >= CHIP_RV670 && rdev->family < CHIP_RS780)
		fb_div >>= 1;
	else
		fb_div |= 1;

	r = FUNC11(rdev, CG_UPLL_FUNC_CNTL);
	if (r)
		return r;

	/* assert PLL_RESET */
	FUNC8(CG_UPLL_FUNC_CNTL, UPLL_RESET_MASK, ~UPLL_RESET_MASK);

	/* For RS780 we have to choose ref clk */
	if (rdev->family >= CHIP_RS780)
		FUNC8(CG_UPLL_FUNC_CNTL, UPLL_REFCLK_SRC_SEL_MASK,
			 ~UPLL_REFCLK_SRC_SEL_MASK);

	/* set the required fb, ref and post divder values */
	FUNC8(CG_UPLL_FUNC_CNTL,
		 FUNC1(fb_div) |
		 FUNC2(ref_div),
		 ~(UPLL_FB_DIV_MASK | UPLL_REF_DIV_MASK));
	FUNC8(CG_UPLL_FUNC_CNTL_2,
		 FUNC3(vclk_div >> 1) |
		 FUNC5((vclk_div >> 1) + (vclk_div & 1)) |
		 FUNC4(dclk_div >> 1) |
		 FUNC6((dclk_div >> 1) + (dclk_div & 1)) |
		 UPLL_DIVEN_MASK | UPLL_DIVEN2_MASK,
		 ~UPLL_SW_MASK);

	/* give the PLL some time to settle */
	FUNC9(15);

	/* deassert PLL_RESET */
	FUNC8(CG_UPLL_FUNC_CNTL, 0, ~UPLL_RESET_MASK);

	FUNC9(15);

	/* deassert BYPASS EN */
	FUNC8(CG_UPLL_FUNC_CNTL, 0, ~UPLL_BYPASS_EN_MASK);

	if (rdev->family >= CHIP_RS780)
		FUNC8(GFX_MACRO_BYPASS_CNTL, 0, ~UPLL_BYPASS_CNTL);

	r = FUNC11(rdev, CG_UPLL_FUNC_CNTL);
	if (r)
		return r;

	/* switch VCLK and DCLK selection */
	FUNC8(CG_UPLL_FUNC_CNTL_2,
		 FUNC7(2) | FUNC0(2),
		 ~(VCLK_SRC_SEL_MASK | DCLK_SRC_SEL_MASK));

	FUNC9(100);

	return 0;
}