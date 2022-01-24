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
struct TYPE_5__ {int /*<<< orphan*/  hard_min_clk; } ;
struct smu8_hwmgr {TYPE_2__ vce_dpm; } ;
struct TYPE_4__ {struct phm_vce_clock_voltage_dependency_table* vce_clock_voltage_dependency_table; } ;
struct pp_hwmgr {scalar_t__ en_umd_pstate; TYPE_1__ dyn_state; struct smu8_hwmgr* backend; } ;
struct phm_vce_clock_voltage_dependency_table {int count; TYPE_3__* entries; } ;
struct TYPE_6__ {int /*<<< orphan*/  ecclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHM_PlatformCaps_StablePState ; 
 int /*<<< orphan*/  PPSMC_MSG_SetEclkHardMin ; 
 int /*<<< orphan*/  PPSMC_MSG_SetEclkSoftMin ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pp_hwmgr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int  FUNC3(struct pp_hwmgr *hwmgr)
{
	struct smu8_hwmgr *data = hwmgr->backend;
	struct phm_vce_clock_voltage_dependency_table *ptable =
		hwmgr->dyn_state.vce_clock_voltage_dependency_table;

	/* Stable Pstate is enabled and we need to set the VCE DPM to highest level */
	if (FUNC0(PHM_PlatformCaps_StablePState) ||
	    hwmgr->en_umd_pstate) {
		data->vce_dpm.hard_min_clk =
				  ptable->entries[ptable->count - 1].ecclk;

		FUNC2(hwmgr,
			PPSMC_MSG_SetEclkHardMin,
			FUNC1(hwmgr,
				data->vce_dpm.hard_min_clk,
				PPSMC_MSG_SetEclkHardMin));
	} else {

		FUNC2(hwmgr,
					PPSMC_MSG_SetEclkHardMin, 0);
		/* disable ECLK DPM 0. Otherwise VCE could hang if
		 * switching SCLK from DPM 0 to 6/7 */
		FUNC2(hwmgr,
					PPSMC_MSG_SetEclkSoftMin, 1);
	}
	return 0;
}