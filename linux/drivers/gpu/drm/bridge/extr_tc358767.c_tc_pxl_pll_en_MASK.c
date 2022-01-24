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
typedef  int u64 ;
typedef  int u32 ;
struct tc_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 int IN_SEL_REFCLK ; 
 int PLLBYP ; 
 int PLLEN ; 
 int /*<<< orphan*/  PXL_PLLCTRL ; 
 int /*<<< orphan*/  PXL_PLLPARAM ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct tc_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tc_data *tc, u32 refclk, u32 pixelclock)
{
	int ret;
	int i_pre, best_pre = 1;
	int i_post, best_post = 1;
	int div, best_div = 1;
	int mul, best_mul = 1;
	int delta, best_delta;
	int ext_div[] = {1, 2, 3, 5, 7};
	int best_pixelclock = 0;
	int vco_hi = 0;
	u32 pxl_pllparam;

	FUNC2(tc->dev, "PLL: requested %d pixelclock, ref %d\n", pixelclock,
		refclk);
	best_delta = pixelclock;
	/* Loop over all possible ext_divs, skipping invalid configurations */
	for (i_pre = 0; i_pre < FUNC0(ext_div); i_pre++) {
		/*
		 * refclk / ext_pre_div should be in the 1 to 200 MHz range.
		 * We don't allow any refclk > 200 MHz, only check lower bounds.
		 */
		if (refclk / ext_div[i_pre] < 1000000)
			continue;
		for (i_post = 0; i_post < FUNC0(ext_div); i_post++) {
			for (div = 1; div <= 16; div++) {
				u32 clk;
				u64 tmp;

				tmp = pixelclock * ext_div[i_pre] *
				      ext_div[i_post] * div;
				FUNC4(tmp, refclk);
				mul = tmp;

				/* Check limits */
				if ((mul < 1) || (mul > 128))
					continue;

				clk = (refclk / ext_div[i_pre] / div) * mul;
				/*
				 * refclk * mul / (ext_pre_div * pre_div)
				 * should be in the 150 to 650 MHz range
				 */
				if ((clk > 650000000) || (clk < 150000000))
					continue;

				clk = clk / ext_div[i_post];
				delta = clk - pixelclock;

				if (FUNC1(delta) < FUNC1(best_delta)) {
					best_pre = i_pre;
					best_post = i_post;
					best_div = div;
					best_mul = mul;
					best_delta = delta;
					best_pixelclock = clk;
				}
			}
		}
	}
	if (best_pixelclock == 0) {
		FUNC3(tc->dev, "Failed to calc clock for %d pixelclock\n",
			pixelclock);
		return -EINVAL;
	}

	FUNC2(tc->dev, "PLL: got %d, delta %d\n", best_pixelclock,
		best_delta);
	FUNC2(tc->dev, "PLL: %d / %d / %d * %d / %d\n", refclk,
		ext_div[best_pre], best_div, best_mul, ext_div[best_post]);

	/* if VCO >= 300 MHz */
	if (refclk / ext_div[best_pre] / best_div * best_mul >= 300000000)
		vco_hi = 1;
	/* see DS */
	if (best_div == 16)
		best_div = 0;
	if (best_mul == 128)
		best_mul = 0;

	/* Power up PLL and switch to bypass */
	ret = FUNC5(tc->regmap, PXL_PLLCTRL, PLLBYP | PLLEN);
	if (ret)
		return ret;

	pxl_pllparam  = vco_hi << 24; /* For PLL VCO >= 300 MHz = 1 */
	pxl_pllparam |= ext_div[best_pre] << 20; /* External Pre-divider */
	pxl_pllparam |= ext_div[best_post] << 16; /* External Post-divider */
	pxl_pllparam |= IN_SEL_REFCLK; /* Use RefClk as PLL input */
	pxl_pllparam |= best_div << 8; /* Divider for PLL RefClk */
	pxl_pllparam |= best_mul; /* Multiplier for PLL */

	ret = FUNC5(tc->regmap, PXL_PLLPARAM, pxl_pllparam);
	if (ret)
		return ret;

	/* Force PLL parameter update and disable bypass */
	return FUNC6(tc, PXL_PLLCTRL);
}