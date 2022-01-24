#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint16_t ;
struct TYPE_3__ {struct phm_cac_tdp_table* cac_dtp_table; } ;
struct pp_hwmgr {TYPE_1__ dyn_state; scalar_t__ smu_backend; } ;
struct phm_cac_tdp_table {int usHighCACLeakage; int usLowCACLeakage; } ;
struct TYPE_4__ {void* BapmVddCBaseLeakageLoSidd; void* BapmVddCBaseLeakageHiSidd; } ;
struct ci_smumgr {TYPE_2__ power_tune_table; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static int FUNC1(struct pp_hwmgr *hwmgr)
{
	struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);
	uint16_t HiSidd = smu_data->power_tune_table.BapmVddCBaseLeakageHiSidd;
	uint16_t LoSidd = smu_data->power_tune_table.BapmVddCBaseLeakageLoSidd;
	struct phm_cac_tdp_table *cac_table = hwmgr->dyn_state.cac_dtp_table;

	HiSidd = (uint16_t)(cac_table->usHighCACLeakage / 100 * 256);
	LoSidd = (uint16_t)(cac_table->usLowCACLeakage / 100 * 256);

	smu_data->power_tune_table.BapmVddCBaseLeakageHiSidd =
			FUNC0(HiSidd);
	smu_data->power_tune_table.BapmVddCBaseLeakageLoSidd =
			FUNC0(LoSidd);

	return 0;
}