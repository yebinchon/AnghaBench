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
struct intel_uncore {int /*<<< orphan*/  pmic_bus_access_nb; int /*<<< orphan*/  fw_domains_saved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*) ; 
 scalar_t__ FUNC4 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct intel_uncore *uncore)
{
	unsigned int restore_forcewake;

	if (FUNC4(uncore))
		FUNC0("unclaimed mmio detected on resume, clearing\n");

	if (!FUNC3(uncore))
		return;

	restore_forcewake = FUNC1(&uncore->fw_domains_saved);
	FUNC2(uncore, restore_forcewake);

	FUNC5(&uncore->pmic_bus_access_nb);
}