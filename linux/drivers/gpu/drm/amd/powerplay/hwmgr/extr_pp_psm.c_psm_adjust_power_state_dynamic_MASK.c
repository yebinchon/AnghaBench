#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct pp_power_state {int dummy; } ;
struct pp_hwmgr {scalar_t__ request_dpm_level; scalar_t__ dpm_level; long* workload_setting; long power_profile_mode; TYPE_1__* hwmgr_func; int /*<<< orphan*/  workload_mask; scalar_t__ ps; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_power_profile_mode ) (struct pp_hwmgr*,long*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ AMD_DPM_FORCED_LEVEL_MANUAL ; 
 int Workload_Policy_Max ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC3 (struct pp_hwmgr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pp_hwmgr*) ; 
 int /*<<< orphan*/  FUNC5 (struct pp_hwmgr*,struct pp_power_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct pp_hwmgr*,long*,int /*<<< orphan*/ ) ; 

int FUNC7(struct pp_hwmgr *hwmgr, bool skip_display_settings,
						struct pp_power_state *new_ps)
{
	uint32_t index;
	long workload;

	if (!skip_display_settings)
		FUNC2(hwmgr);

	if (hwmgr->ps)
		FUNC5(hwmgr, new_ps);
	else
		/*
		 * for vega12/vega20 which does not support power state manager
		 * DAL clock limits should also be honoured
		 */
		FUNC1(hwmgr);

	if (!skip_display_settings)
		FUNC4(hwmgr);

	if (!FUNC3(hwmgr, hwmgr->request_dpm_level))
		hwmgr->dpm_level = hwmgr->request_dpm_level;

	if (hwmgr->dpm_level != AMD_DPM_FORCED_LEVEL_MANUAL) {
		index = FUNC0(hwmgr->workload_mask);
		index = index > 0 && index <= Workload_Policy_Max ? index - 1 : 0;
		workload = hwmgr->workload_setting[index];

		if (hwmgr->power_profile_mode != workload && hwmgr->hwmgr_func->set_power_profile_mode)
			hwmgr->hwmgr_func->set_power_profile_mode(hwmgr, &workload, 0);
	}

	return 0;
}