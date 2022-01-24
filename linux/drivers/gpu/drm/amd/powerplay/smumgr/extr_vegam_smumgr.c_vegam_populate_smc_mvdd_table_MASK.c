#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {scalar_t__ count; int /*<<< orphan*/  mask_low; TYPE_3__* entries; } ;
struct smu7_hwmgr {scalar_t__ mvdd_control; TYPE_4__ mvdd_voltage_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_8__ {TYPE_1__* Pattern; } ;
struct TYPE_11__ {scalar_t__ MvddLevelCount; int /*<<< orphan*/  SmioMask2; int /*<<< orphan*/ * Smio; TYPE_2__ SmioTable2; } ;
struct TYPE_9__ {int value; int /*<<< orphan*/  smio_low; } ;
struct TYPE_7__ {scalar_t__ Smio; int /*<<< orphan*/  Voltage; } ;
typedef  TYPE_5__ SMU75_Discrete_DpmTable ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ SMU7_VOLTAGE_CONTROL_BY_GPIO ; 
 scalar_t__ SMU_MAX_SMIO_LEVELS ; 
 int VOLTAGE_SCALE ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr,
			SMU75_Discrete_DpmTable *table)
{
	struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
	uint32_t count, level;

	if (SMU7_VOLTAGE_CONTROL_BY_GPIO == data->mvdd_control) {
		count = data->mvdd_voltage_table.count;
		if (count > SMU_MAX_SMIO_LEVELS)
			count = SMU_MAX_SMIO_LEVELS;
		for (level = 0; level < count; level++) {
			table->SmioTable2.Pattern[level].Voltage = FUNC1(
					data->mvdd_voltage_table.entries[level].value * VOLTAGE_SCALE);
			/* Index into DpmTable.Smio. Drive bits from Smio entry to get this voltage level.*/
			table->SmioTable2.Pattern[level].Smio =
				(uint8_t) level;
			table->Smio[level] |=
				data->mvdd_voltage_table.entries[level].smio_low;
		}
		table->SmioMask2 = data->mvdd_voltage_table.mask_low;

		table->MvddLevelCount = (uint32_t) FUNC0(count);
	}

	return 0;
}