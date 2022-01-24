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
struct intel_uncore {int /*<<< orphan*/  fw_domains_saved; int /*<<< orphan*/  pmic_bus_access_nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct intel_uncore *uncore)
{
	if (!FUNC1(uncore))
		return;

	FUNC2();
	FUNC4(
		&uncore->pmic_bus_access_nb);
	uncore->fw_domains_saved = FUNC0(uncore);
	FUNC3();
}