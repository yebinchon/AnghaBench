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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct intel_uncore *uncore)
{
	if (!FUNC0(uncore))
		return;

	FUNC1(&uncore->pmic_bus_access_nb);
}