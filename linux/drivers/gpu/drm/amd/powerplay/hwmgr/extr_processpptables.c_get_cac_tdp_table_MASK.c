#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct pp_hwmgr {int dummy; } ;
struct phm_cac_tdp_table {int /*<<< orphan*/  usMaximumPowerDeliveryLimit; void* usHighCACLeakage; void* usLowCACLeakage; void* usSmallPowerLimit; void* usBatteryPowerLimit; void* usTDC; void* usConfigurableTDP; void* usTDP; } ;
struct TYPE_3__ {int /*<<< orphan*/  usHighCACLeakage; int /*<<< orphan*/  usLowCACLeakage; int /*<<< orphan*/  usSmallPowerLimit; int /*<<< orphan*/  usBatteryPowerLimit; int /*<<< orphan*/  usTDC; int /*<<< orphan*/  usConfigurableTDP; int /*<<< orphan*/  usTDP; } ;
typedef  TYPE_1__ ATOM_PowerTune_Table ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct phm_cac_tdp_table* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct pp_hwmgr *hwmgr,
				struct phm_cac_tdp_table **ptable,
				const ATOM_PowerTune_Table *table,
				uint16_t us_maximum_power_delivery_limit)
{
	unsigned long table_size;
	struct phm_cac_tdp_table *tdp_table;

	table_size = sizeof(unsigned long) + sizeof(struct phm_cac_tdp_table);

	tdp_table = FUNC0(table_size, GFP_KERNEL);
	if (NULL == tdp_table)
		return -ENOMEM;

	tdp_table->usTDP = FUNC1(table->usTDP);
	tdp_table->usConfigurableTDP = FUNC1(table->usConfigurableTDP);
	tdp_table->usTDC = FUNC1(table->usTDC);
	tdp_table->usBatteryPowerLimit = FUNC1(table->usBatteryPowerLimit);
	tdp_table->usSmallPowerLimit = FUNC1(table->usSmallPowerLimit);
	tdp_table->usLowCACLeakage = FUNC1(table->usLowCACLeakage);
	tdp_table->usHighCACLeakage = FUNC1(table->usHighCACLeakage);
	tdp_table->usMaximumPowerDeliveryLimit = us_maximum_power_delivery_limit;

	*ptable = tdp_table;

	return 0;
}