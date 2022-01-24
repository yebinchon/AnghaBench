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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int LCPLL_CD_SOURCE_FCLK ; 
 int /*<<< orphan*/  LCPLL_CTL ; 
 int LCPLL_PLL_DISABLE ; 
 int LCPLL_REF_MASK ; 
 int LCPLL_REF_NON_SSC ; 

__attribute__((used)) static void FUNC2(struct drm_i915_private *dev_priv)
{
	u32 val = FUNC1(LCPLL_CTL);

	/*
	 * The LCPLL register should be turned on by the BIOS. For now
	 * let's just check its state and print errors in case
	 * something is wrong.  Don't even try to turn it on.
	 */

	if (val & LCPLL_CD_SOURCE_FCLK)
		FUNC0("CDCLK source is not LCPLL\n");

	if (val & LCPLL_PLL_DISABLE)
		FUNC0("LCPLL is disabled\n");

	if ((val & LCPLL_REF_MASK) != LCPLL_REF_NON_SSC)
		FUNC0("LCPLL not using non-SSC reference\n");
}