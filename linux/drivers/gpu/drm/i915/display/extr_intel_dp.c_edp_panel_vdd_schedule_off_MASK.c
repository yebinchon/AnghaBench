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
struct intel_dp {int panel_power_cycle_delay; int /*<<< orphan*/  panel_vdd_work; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct intel_dp *intel_dp)
{
	unsigned long delay;

	/*
	 * Queue the timer to fire a long time from now (relative to the power
	 * down delay) to keep the panel power up across a sequence of
	 * operations.
	 */
	delay = FUNC0(intel_dp->panel_power_cycle_delay * 5);
	FUNC1(&intel_dp->panel_vdd_work, delay);
}