#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rv7xx_power_info {scalar_t__ max_vddc_in_table; } ;
struct radeon_device {int dummy; } ;
struct TYPE_10__ {char count; int /*<<< orphan*/  mask_low; TYPE_1__* entries; } ;
struct evergreen_power_info {TYPE_5__ vddci_voltage_table; TYPE_5__ vddc_voltage_table; } ;
struct TYPE_8__ {void** lowMask; scalar_t__* highMask; } ;
struct TYPE_9__ {unsigned char maxVDDCIndexInPPTable; TYPE_2__ voltageMaskTable; } ;
struct TYPE_7__ {scalar_t__ value; } ;
typedef  TYPE_3__ RV770_SMC_STATETABLE ;

/* Variables and functions */
 size_t RV770_SMC_VOLTAGEMASK_VDDC ; 
 size_t RV770_SMC_VOLTAGEMASK_VDDCI ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,TYPE_5__*,TYPE_3__*) ; 
 struct evergreen_power_info* FUNC2 (struct radeon_device*) ; 
 struct rv7xx_power_info* FUNC3 (struct radeon_device*) ; 

int FUNC4(struct radeon_device *rdev,
					RV770_SMC_STATETABLE *table)
{
	struct rv7xx_power_info *pi = FUNC3(rdev);
	struct evergreen_power_info *eg_pi = FUNC2(rdev);
	unsigned char i;

	if (eg_pi->vddc_voltage_table.count) {
		FUNC1(rdev,
						   &eg_pi->vddc_voltage_table,
						   table);

		table->voltageMaskTable.highMask[RV770_SMC_VOLTAGEMASK_VDDC] = 0;
		table->voltageMaskTable.lowMask[RV770_SMC_VOLTAGEMASK_VDDC] =
			FUNC0(eg_pi->vddc_voltage_table.mask_low);

		for (i = 0; i < eg_pi->vddc_voltage_table.count; i++) {
			if (pi->max_vddc_in_table <=
			    eg_pi->vddc_voltage_table.entries[i].value) {
				table->maxVDDCIndexInPPTable = i;
				break;
			}
		}
	}

	if (eg_pi->vddci_voltage_table.count) {
		FUNC1(rdev,
						   &eg_pi->vddci_voltage_table,
						   table);

		table->voltageMaskTable.highMask[RV770_SMC_VOLTAGEMASK_VDDCI] = 0;
		table->voltageMaskTable.lowMask[RV770_SMC_VOLTAGEMASK_VDDCI] =
			FUNC0(eg_pi->vddci_voltage_table.mask_low);
	}

	return 0;
}