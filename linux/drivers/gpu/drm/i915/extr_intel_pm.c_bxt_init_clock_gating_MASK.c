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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ ; 
 int GEN8_SDEUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN8_UCGCTL6 ; 
 int /*<<< orphan*/  GEN9_CLKGATE_DIS_0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int PWM1_GATING_DIS ; 
 int PWM2_GATING_DIS ; 
 int /*<<< orphan*/  RM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	FUNC3(dev_priv);

	/* WaDisableSDEUnitClockGating:bxt */
	FUNC1(GEN8_UCGCTL6, FUNC0(GEN8_UCGCTL6) |
		   GEN8_SDEUNIT_CLOCK_GATE_DISABLE);

	/*
	 * FIXME:
	 * GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ applies on 3x6 GT SKUs only.
	 */
	FUNC1(GEN8_UCGCTL6, FUNC0(GEN8_UCGCTL6) |
		   GEN8_HDCUNIT_CLOCK_GATE_DISABLE_HDCREQ);

	/*
	 * Wa: Backlight PWM may stop in the asserted state, causing backlight
	 * to stay fully on.
	 */
	FUNC1(GEN9_CLKGATE_DIS_0, FUNC0(GEN9_CLKGATE_DIS_0) |
		   PWM1_GATING_DIS | PWM2_GATING_DIS);

	/*
	 * Lower the display internal timeout.
	 * This is needed to avoid any hard hangs when DSI port PLL
	 * is off and a MMIO access is attempted by any privilege
	 * application, using batch buffers or any other means.
	 */
	FUNC1(RM_TIMEOUT, FUNC2(950));
}