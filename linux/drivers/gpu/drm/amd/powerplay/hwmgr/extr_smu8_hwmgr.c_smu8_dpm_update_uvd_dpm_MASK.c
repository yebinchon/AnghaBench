#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hard_min_clk; } ;
struct smu8_hwmgr {TYPE_3__ uvd_dpm; } ;
struct TYPE_5__ {struct phm_uvd_clock_voltage_dependency_table* uvd_clock_voltage_dependency_table; } ;
struct pp_hwmgr {scalar_t__ en_umd_pstate; TYPE_2__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_uvd_clock_voltage_dependency_table {int count; TYPE_1__* entries; } ;
struct TYPE_4__ {int /*<<< orphan*/  vclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_StablePState ; 
 int /*<<< orphan*/  PPSMC_MSG_SetUvdHardMin ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct pp_hwmgr *hwmgr, bool bgate)
{
	struct smu8_hwmgr *data = hwmgr->backend;
	struct phm_uvd_clock_voltage_dependency_table *ptable =
		hwmgr->dyn_state.uvd_clock_voltage_dependency_table;

	if (!bgate) {
		/* Stable Pstate is enabled and we need to set the UVD DPM to highest level */
		if (FUNC0(PHM_PlatformCaps_StablePState) ||
		    hwmgr->en_umd_pstate) {
			data->uvd_dpm.hard_min_clk =
				   ptable->entries[ptable->count - 1].vclk;

			FUNC3(hwmgr,
				PPSMC_MSG_SetUvdHardMin,
				FUNC2(hwmgr,
					data->uvd_dpm.hard_min_clk,
					PPSMC_MSG_SetUvdHardMin));

			FUNC1(hwmgr, true);
		} else {
			FUNC1(hwmgr, true);
		}
	} else {
		FUNC1(hwmgr, false);
	}

	return 0;
}