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
struct smu_context {size_t power_profile_mode; int /*<<< orphan*/  pm_enabled; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t PP_SMC_POWER_PROFILE_CUSTOM ; 
 int /*<<< orphan*/  SMU_MSG_SetWorkloadMask ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct smu_context*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct smu_context*,size_t) ; 

__attribute__((used)) static int FUNC3(struct smu_context *smu,
					   long *input,
					   uint32_t size)
{
	int workload_type = 0;
	uint32_t profile_mode = input[size];
	int ret = 0;

	if (!smu->pm_enabled)
		return -EINVAL;

	if (profile_mode > PP_SMC_POWER_PROFILE_CUSTOM) {
		FUNC0("Invalid power profile mode %d\n", profile_mode);
		return -EINVAL;
	}

	/*
	 * Conv PP_SMC_POWER_PROFILE* to WORKLOAD_PPLIB_*_BIT
	 * Not all profile modes are supported on arcturus.
	 */
	workload_type = FUNC2(smu, profile_mode);
	if (workload_type < 0) {
		FUNC0("Unsupported power profile mode %d on arcturus\n", profile_mode);
		return -EINVAL;
	}

	ret = FUNC1(smu,
					  SMU_MSG_SetWorkloadMask,
					  1 << workload_type);
	if (ret) {
		FUNC0("Fail to set workload type %d\n", workload_type);
		return ret;
	}

	smu->power_profile_mode = profile_mode;

	return 0;
}