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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ PCH_ICP ; 
 int /*<<< orphan*/  PCH_RAWCLK_FREQ ; 
 int /*<<< orphan*/  SFUSE_STRAP ; 
 int SFUSE_STRAP_RAW_FREQUENCY ; 

__attribute__((used)) static int FUNC7(struct drm_i915_private *dev_priv)
{
	u32 rawclk;
	int divider, fraction;

	if (FUNC3(SFUSE_STRAP) & SFUSE_STRAP_RAW_FREQUENCY) {
		/* 24 MHz */
		divider = 24000;
		fraction = 0;
	} else {
		/* 19.2 MHz */
		divider = 19000;
		fraction = 200;
	}

	rawclk = FUNC1(divider / 1000);
	if (fraction) {
		int numerator = 1;

		rawclk |= FUNC0(FUNC2(numerator * 1000,
							   fraction) - 1);
		if (FUNC6(dev_priv) >= PCH_ICP)
			rawclk |= FUNC5(numerator);
	}

	FUNC4(PCH_RAWCLK_FREQ, rawclk);
	return divider + fraction;
}