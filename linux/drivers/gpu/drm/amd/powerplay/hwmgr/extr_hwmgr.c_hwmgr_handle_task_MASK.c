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
struct pp_power_state {int dummy; } ;
struct pp_hwmgr {int dummy; } ;
typedef  enum amd_pp_task { ____Placeholder_amd_pp_task } amd_pp_task ;
typedef  enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
typedef  enum PP_StateUILabel { ____Placeholder_PP_StateUILabel } PP_StateUILabel ;

/* Variables and functions */
#define  AMD_PP_TASK_COMPLETE_INIT 131 
#define  AMD_PP_TASK_DISPLAY_CONFIG_CHANGE 130 
#define  AMD_PP_TASK_ENABLE_USER_STATE 129 
#define  AMD_PP_TASK_READJUST_POWER_STATE 128 
 int EINVAL ; 
 int FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct pp_hwmgr*,int,struct pp_power_state*) ; 
 int FUNC4 (struct pp_hwmgr*) ; 
 int FUNC5 (struct pp_hwmgr*,int,struct pp_power_state**) ; 

int FUNC6(struct pp_hwmgr *hwmgr, enum amd_pp_task task_id,
		enum amd_pm_state_type *user_state)
{
	int ret = 0;

	if (hwmgr == NULL)
		return -EINVAL;

	switch (task_id) {
	case AMD_PP_TASK_DISPLAY_CONFIG_CHANGE:
		ret = FUNC0(hwmgr);
		if (ret)
			return ret;
		ret = FUNC1(hwmgr);
		if (ret)
			return ret;
		ret = FUNC4(hwmgr);
		if (ret)
			return ret;
		ret = FUNC3(hwmgr, false, NULL);
		break;
	case AMD_PP_TASK_ENABLE_USER_STATE:
	{
		enum PP_StateUILabel requested_ui_label;
		struct pp_power_state *requested_ps = NULL;

		if (user_state == NULL) {
			ret = -EINVAL;
			break;
		}

		requested_ui_label = FUNC2(*user_state);
		ret = FUNC5(hwmgr, requested_ui_label, &requested_ps);
		if (ret)
			return ret;
		ret = FUNC3(hwmgr, true, requested_ps);
		break;
	}
	case AMD_PP_TASK_COMPLETE_INIT:
	case AMD_PP_TASK_READJUST_POWER_STATE:
		ret = FUNC3(hwmgr, true, NULL);
		break;
	default:
		break;
	}
	return ret;
}