#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct radeon_device {int dummy; } ;
struct TYPE_6__ {unsigned int count; TYPE_3__* entries; } ;
struct ci_power_info {scalar_t__ vddci_control; TYPE_1__ vddci_voltage_table; } ;
struct TYPE_9__ {int /*<<< orphan*/  Smio; } ;
struct TYPE_8__ {int /*<<< orphan*/  smio_low; } ;
struct TYPE_7__ {unsigned int VddciLevelCount; TYPE_4__* VddciLevel; } ;
typedef  TYPE_2__ SMU7_Discrete_DpmTable ;

/* Variables and functions */
 scalar_t__ CISLANDS_VOLTAGE_CONTROL_BY_GPIO ; 
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,TYPE_3__*,TYPE_4__*) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(struct radeon_device *rdev,
				       SMU7_Discrete_DpmTable *table)
{
	unsigned int count;
	struct ci_power_info *pi = FUNC0(rdev);

	table->VddciLevelCount = pi->vddci_voltage_table.count;
	for (count = 0; count < table->VddciLevelCount; count++) {
		FUNC1(rdev,
					      &pi->vddci_voltage_table.entries[count],
					      &table->VddciLevel[count]);

		if (pi->vddci_control == CISLANDS_VOLTAGE_CONTROL_BY_GPIO)
			table->VddciLevel[count].Smio |=
				pi->vddci_voltage_table.entries[count].smio_low;
		else
			table->VddciLevel[count].Smio = 0;
	}
	table->VddciLevelCount = FUNC2(table->VddciLevelCount);

	return 0;
}