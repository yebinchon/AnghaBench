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
typedef  size_t uint32_t ;
struct pp_hwmgr {long power_profile_mode; int gfxoff_state_changed_by_workload; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_ActiveProcessNotify ; 
 long PP_SMC_POWER_PROFILE_COMPUTE ; 
 int FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (char*,long) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_hwmgr*,int) ; 
 scalar_t__ FUNC3 (struct pp_hwmgr*) ; 
 int FUNC4 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct pp_hwmgr *hwmgr, long *input, uint32_t size)
{
	int workload_type = 0;
	int result = 0;

	if (input[size] > PP_SMC_POWER_PROFILE_COMPUTE) {
		FUNC1("Invalid power profile mode %ld\n", input[size]);
		return -EINVAL;
	}
	if (hwmgr->power_profile_mode == input[size])
		return 0;

	/* conv PP_SMC_POWER_PROFILE* to WORKLOAD_PPLIB_*_BIT */
	workload_type =
		FUNC0(input[size]);
	if (workload_type &&
	    FUNC3(hwmgr) &&
	    !hwmgr->gfxoff_state_changed_by_workload) {
		FUNC2(hwmgr, false);
		hwmgr->gfxoff_state_changed_by_workload = true;
	}
	result = FUNC4(hwmgr, PPSMC_MSG_ActiveProcessNotify,
						1 << workload_type);
	if (!result)
		hwmgr->power_profile_mode = input[size];
	if (workload_type && hwmgr->gfxoff_state_changed_by_workload) {
		FUNC2(hwmgr, true);
		hwmgr->gfxoff_state_changed_by_workload = false;
	}

	return 0;
}