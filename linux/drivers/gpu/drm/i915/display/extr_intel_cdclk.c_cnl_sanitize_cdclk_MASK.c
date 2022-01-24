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
struct TYPE_4__ {int vco; scalar_t__ cdclk; scalar_t__ bypass; } ;
struct TYPE_3__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;

/* Variables and functions */
 int BXT_CDCLK_CD2X_DIV_SEL_MASK ; 
 int BXT_CDCLK_CD2X_PIPE_NONE ; 
 int /*<<< orphan*/  CDCLK_CTL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv)
{
	u32 cdctl, expected;

	FUNC3(dev_priv);
	FUNC2(&dev_priv->cdclk.hw, "Current CDCLK");

	if (dev_priv->cdclk.hw.vco == 0 ||
	    dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
		goto sanitize;

	/* DPLL okay; verify the cdclock
	 *
	 * Some BIOS versions leave an incorrect decimal frequency value and
	 * set reserved MBZ bits in CDCLK_CTL at least during exiting from S4,
	 * so sanitize this register.
	 */
	cdctl = FUNC1(CDCLK_CTL);
	/*
	 * Let's ignore the pipe field, since BIOS could have configured the
	 * dividers both synching to an active pipe, or asynchronously
	 * (PIPE_NONE).
	 */
	cdctl &= ~BXT_CDCLK_CD2X_PIPE_NONE;

	expected = (cdctl & BXT_CDCLK_CD2X_DIV_SEL_MASK) |
		   FUNC4(dev_priv->cdclk.hw.cdclk);

	if (cdctl == expected)
		/* All well; nothing to sanitize */
		return;

sanitize:
	FUNC0("Sanitizing cdclk programmed by pre-os\n");

	/* force cdclk programming */
	dev_priv->cdclk.hw.cdclk = 0;

	/* force full PLL disable + enable */
	dev_priv->cdclk.hw.vco = -1;
}