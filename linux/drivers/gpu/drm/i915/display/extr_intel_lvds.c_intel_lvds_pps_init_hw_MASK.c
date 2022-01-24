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
struct intel_lvds_pps {int /*<<< orphan*/  t4; scalar_t__ divider; scalar_t__ tx; scalar_t__ t3; scalar_t__ t5; scalar_t__ t1_t2; scalar_t__ port; scalar_t__ powerdown_on_reset; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PANEL_LIGHT_OFF_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_LIGHT_ON_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_PORT_SELECT_MASK ; 
 int /*<<< orphan*/  PANEL_POWER_CYCLE_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_POWER_DOWN_DELAY_MASK ; 
 int PANEL_POWER_RESET ; 
 int /*<<< orphan*/  PANEL_POWER_UP_DELAY_MASK ; 
 int PANEL_UNLOCK_MASK ; 
 int PANEL_UNLOCK_REGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PP_REFERENCE_DIVIDER_MASK ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct drm_i915_private *dev_priv,
				   struct intel_lvds_pps *pps)
{
	u32 val;

	val = FUNC1(FUNC3(0));
	FUNC8((val & PANEL_UNLOCK_MASK) != PANEL_UNLOCK_REGS);
	if (pps->powerdown_on_reset)
		val |= PANEL_POWER_RESET;
	FUNC2(FUNC3(0), val);

	FUNC2(FUNC6(0),
		   FUNC7(PANEL_PORT_SELECT_MASK, pps->port) |
		   FUNC7(PANEL_POWER_UP_DELAY_MASK, pps->t1_t2) |
		   FUNC7(PANEL_LIGHT_ON_DELAY_MASK, pps->t5));

	FUNC2(FUNC5(0),
		   FUNC7(PANEL_POWER_DOWN_DELAY_MASK, pps->t3) |
		   FUNC7(PANEL_LIGHT_OFF_DELAY_MASK, pps->tx));

	FUNC2(FUNC4(0),
		   FUNC7(PP_REFERENCE_DIVIDER_MASK, pps->divider) |
		   FUNC7(PANEL_POWER_CYCLE_DELAY_MASK,
				  FUNC0(pps->t4, 1000) + 1));
}