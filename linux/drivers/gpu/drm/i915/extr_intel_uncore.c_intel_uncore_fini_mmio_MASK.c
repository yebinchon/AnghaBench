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
struct intel_uncore {int /*<<< orphan*/  pmic_bus_access_nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*) ; 
 scalar_t__ FUNC2 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_uncore*) ; 

void FUNC7(struct intel_uncore *uncore)
{
	if (FUNC2(uncore)) {
		FUNC3();
		FUNC5(
			&uncore->pmic_bus_access_nb);
		FUNC0(uncore);
		FUNC1(uncore);
		FUNC4();
	}

	FUNC6(uncore);
}