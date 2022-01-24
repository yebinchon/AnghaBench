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
struct intel_runtime_pm {int /*<<< orphan*/  wakeref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_RPM_WAKELOCK_BIAS ; 
 int /*<<< orphan*/  FUNC0 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct intel_runtime_pm *rpm, int wakelock)
{
	if (wakelock) {
		FUNC2(rpm);
		FUNC3(INTEL_RPM_WAKELOCK_BIAS, &rpm->wakeref_count);
	} else {
		FUNC1(rpm);
	}

	FUNC0(rpm);
}