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
struct intel_lvds_pps {int powerdown_on_reset; int t1_t2; int t5; int t3; int tx; int t4; void* port; void* divider; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int,void*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PANEL_LIGHT_OFF_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_LIGHT_ON_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_PORT_SELECT_MASK ; 
 int /*<<< orphan*/  PANEL_POWER_CYCLE_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_POWER_DOWN_DELAY_MASK ; 
 int PANEL_POWER_RESET ; 
 int /*<<< orphan*/  PANEL_POWER_UP_DELAY_MASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PP_REFERENCE_DIVIDER_MASK ; 
 void* FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv,
					struct intel_lvds_pps *pps)
{
	u32 val;

	pps->powerdown_on_reset = FUNC2(FUNC4(0)) & PANEL_POWER_RESET;

	val = FUNC2(FUNC7(0));
	pps->port = FUNC8(PANEL_PORT_SELECT_MASK, val);
	pps->t1_t2 = FUNC8(PANEL_POWER_UP_DELAY_MASK, val);
	pps->t5 = FUNC8(PANEL_LIGHT_ON_DELAY_MASK, val);

	val = FUNC2(FUNC6(0));
	pps->t3 = FUNC8(PANEL_POWER_DOWN_DELAY_MASK, val);
	pps->tx = FUNC8(PANEL_LIGHT_OFF_DELAY_MASK, val);

	val = FUNC2(FUNC5(0));
	pps->divider = FUNC8(PP_REFERENCE_DIVIDER_MASK, val);
	val = FUNC8(PANEL_POWER_CYCLE_DELAY_MASK, val);
	/*
	 * Remove the BSpec specified +1 (100ms) offset that accounts for a
	 * too short power-cycle delay due to the asynchronous programming of
	 * the register.
	 */
	if (val)
		val--;
	/* Convert from 100ms to 100us units */
	pps->t4 = val * 1000;

	if (FUNC3(dev_priv) <= 4 &&
	    pps->t1_t2 == 0 && pps->t5 == 0 && pps->t3 == 0 && pps->tx == 0) {
		FUNC1("Panel power timings uninitialized, "
			      "setting defaults\n");
		/* Set T2 to 40ms and T5 to 200ms in 100 usec units */
		pps->t1_t2 = 40 * 10;
		pps->t5 = 200 * 10;
		/* Set T3 to 35ms and Tx to 200ms in 100 usec units */
		pps->t3 = 35 * 10;
		pps->tx = 200 * 10;
	}

	FUNC0("LVDS PPS:t1+t2 %d t3 %d t4 %d t5 %d tx %d "
			 "divider %d port %d powerdown_on_reset %d\n",
			 pps->t1_t2, pps->t3, pps->t4, pps->t5, pps->tx,
			 pps->divider, pps->port, pps->powerdown_on_reset);
}