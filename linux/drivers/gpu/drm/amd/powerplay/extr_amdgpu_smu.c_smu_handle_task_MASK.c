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
struct smu_context {int dummy; } ;
typedef  enum amd_pp_task { ____Placeholder_amd_pp_task } amd_pp_task ;
typedef  enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;

/* Variables and functions */
#define  AMD_PP_TASK_COMPLETE_INIT 130 
#define  AMD_PP_TASK_DISPLAY_CONFIG_CHANGE 129 
#define  AMD_PP_TASK_READJUST_POWER_STATE 128 
 int FUNC0 (struct smu_context*,int,int) ; 
 int FUNC1 (struct smu_context*) ; 
 int FUNC2 (struct smu_context*) ; 

int FUNC3(struct smu_context *smu,
		    enum amd_dpm_forced_level level,
		    enum amd_pp_task task_id)
{
	int ret = 0;

	switch (task_id) {
	case AMD_PP_TASK_DISPLAY_CONFIG_CHANGE:
		ret = FUNC1(smu);
		if (ret)
			return ret;
		ret = FUNC2(smu);
		if (ret)
			return ret;
		ret = FUNC0(smu, level, false);
		break;
	case AMD_PP_TASK_COMPLETE_INIT:
	case AMD_PP_TASK_READJUST_POWER_STATE:
		ret = FUNC0(smu, level, true);
		break;
	default:
		break;
	}

	return ret;
}