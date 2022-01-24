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
struct TYPE_3__ {scalar_t__ cdclk; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {scalar_t__ czclk_freq; TYPE_2__ cdclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCI_CONTROL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int PFI_CREDIT_63 ; 
 unsigned int PFI_CREDIT_RESEND ; 
 unsigned int VGA_FAST_MODE_DISABLE ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	unsigned int credits, default_credits;

	if (FUNC2(dev_priv))
		default_credits = FUNC3(12);
	else
		default_credits = FUNC3(8);

	if (dev_priv->cdclk.hw.cdclk >= dev_priv->czclk_freq) {
		/* CHV suggested value is 31 or 63 */
		if (FUNC2(dev_priv))
			credits = PFI_CREDIT_63;
		else
			credits = FUNC3(15);
	} else {
		credits = default_credits;
	}

	/*
	 * WA - write default credits before re-programming
	 * FIXME: should we also set the resend bit here?
	 */
	FUNC1(GCI_CONTROL, VGA_FAST_MODE_DISABLE |
		   default_credits);

	FUNC1(GCI_CONTROL, VGA_FAST_MODE_DISABLE |
		   credits | PFI_CREDIT_RESEND);

	/*
	 * FIXME is this guaranteed to clear
	 * immediately or should we poll for it?
	 */
	FUNC4(FUNC0(GCI_CONTROL) & PFI_CREDIT_RESEND);
}