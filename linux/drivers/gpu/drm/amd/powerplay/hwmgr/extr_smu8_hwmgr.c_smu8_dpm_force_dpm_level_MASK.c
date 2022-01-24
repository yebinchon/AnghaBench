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
struct pp_hwmgr {int dummy; } ;
typedef  enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;

/* Variables and functions */
#define  AMD_DPM_FORCED_LEVEL_AUTO 135 
#define  AMD_DPM_FORCED_LEVEL_HIGH 134 
#define  AMD_DPM_FORCED_LEVEL_LOW 133 
#define  AMD_DPM_FORCED_LEVEL_MANUAL 132 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_EXIT 131 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK 130 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_PEAK 129 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD 128 
 int FUNC0 (struct pp_hwmgr*) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC3(struct pp_hwmgr *hwmgr,
				enum amd_dpm_forced_level level)
{
	int ret = 0;

	switch (level) {
	case AMD_DPM_FORCED_LEVEL_HIGH:
	case AMD_DPM_FORCED_LEVEL_PROFILE_PEAK:
		ret = FUNC0(hwmgr);
		break;
	case AMD_DPM_FORCED_LEVEL_LOW:
	case AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK:
	case AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD:
		ret = FUNC1(hwmgr);
		break;
	case AMD_DPM_FORCED_LEVEL_AUTO:
		ret = FUNC2(hwmgr);
		break;
	case AMD_DPM_FORCED_LEVEL_MANUAL:
	case AMD_DPM_FORCED_LEVEL_PROFILE_EXIT:
	default:
		break;
	}

	return ret;
}