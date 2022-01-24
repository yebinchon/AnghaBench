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
struct hfi1_pportdata {int /*<<< orphan*/  led_override_timer_active; int /*<<< orphan*/  led_override_timer; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCC_CFG_LED_CNTRL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct hfi1_pportdata *ppd)
{
	struct hfi1_devdata *dd = ppd->dd;

	/*
	 * This pairs with the memory barrier in hfi1_start_led_override to
	 * ensure that we read the correct state of LED beaconing represented
	 * by led_override_timer_active
	 */
	FUNC3();
	if (FUNC0(&ppd->led_override_timer_active)) {
		FUNC2(&ppd->led_override_timer);
		FUNC1(&ppd->led_override_timer_active, 0);
		/* Ensure the atomic_set is visible to all CPUs */
		FUNC4();
	}

	/* Hand control of the LED to the DC for normal operation */
	FUNC5(dd, DCC_CFG_LED_CNTRL, 0);
}