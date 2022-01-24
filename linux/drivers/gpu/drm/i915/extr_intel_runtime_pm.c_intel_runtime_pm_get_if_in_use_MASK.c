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
struct intel_runtime_pm {int /*<<< orphan*/  kdev; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_runtime_pm*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_runtime_pm*) ; 

intel_wakeref_t FUNC4(struct intel_runtime_pm *rpm)
{
	if (FUNC0(CONFIG_PM)) {
		/*
		 * In cases runtime PM is disabled by the RPM core and we get
		 * an -EINVAL return value we are not supposed to call this
		 * function, since the power state is undefined. This applies
		 * atm to the late/early system suspend/resume handlers.
		 */
		if (FUNC2(rpm->kdev) <= 0)
			return 0;
	}

	FUNC1(rpm, true);

	return FUNC3(rpm);
}