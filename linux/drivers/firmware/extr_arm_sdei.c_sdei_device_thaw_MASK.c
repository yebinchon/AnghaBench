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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_AP_ARM_SDEI_STARTING ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  sdei_cpuhp_down ; 
 int /*<<< orphan*/  sdei_cpuhp_up ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	int err;

	/* re-register shared events */
	err = FUNC3();
	if (err) {
		FUNC1("Failed to re-register shared events...\n");
		FUNC2();
		return err;
	}

	err = FUNC0(CPUHP_AP_ARM_SDEI_STARTING, "SDEI",
				&sdei_cpuhp_up, &sdei_cpuhp_down);
	if (err)
		FUNC1("Failed to re-register CPU hotplug notifier...\n");

	return err;
}