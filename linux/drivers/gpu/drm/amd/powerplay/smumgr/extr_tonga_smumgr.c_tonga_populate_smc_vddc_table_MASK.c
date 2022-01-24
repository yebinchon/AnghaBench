#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned int count; TYPE_1__* entries; } ;
struct smu7_hwmgr {scalar_t__ voltage_control; TYPE_2__ vddc_voltage_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_7__ {unsigned int VddcLevelCount; int /*<<< orphan*/ * VddcTable; } ;
struct TYPE_5__ {int value; } ;
typedef  TYPE_3__ SMU72_Discrete_DpmTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_SVID2 ; 
 int VOLTAGE_SCALE ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr,
			SMU72_Discrete_DpmTable *table)
{
	unsigned int count;
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

	if (SMU7_VOLTAGE_CONTROL_BY_SVID2 == data->voltage_control) {
		table->VddcLevelCount = data->vddc_voltage_table.count;
		for (count = 0; count < table->VddcLevelCount; count++) {
			table->VddcTable[count] =
				FUNC1(data->vddc_voltage_table.entries[count].value * VOLTAGE_SCALE);
		}
		FUNC0(table->VddcLevelCount);
	}
	return 0;
}