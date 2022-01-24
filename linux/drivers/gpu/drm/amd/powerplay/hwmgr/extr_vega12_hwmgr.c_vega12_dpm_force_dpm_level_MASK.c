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
typedef  int uint32_t ;
struct pp_hwmgr {int dummy; } ;
typedef  enum amd_dpm_forced_level { ____Placeholder_amd_dpm_forced_level } amd_dpm_forced_level ;

/* Variables and functions */
#define  AMD_DPM_FORCED_LEVEL_AUTO 136 
#define  AMD_DPM_FORCED_LEVEL_HIGH 135 
#define  AMD_DPM_FORCED_LEVEL_LOW 134 
#define  AMD_DPM_FORCED_LEVEL_MANUAL 133 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_EXIT 132 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK 131 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK 130 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_PEAK 129 
#define  AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD 128 
 int /*<<< orphan*/  PP_MCLK ; 
 int /*<<< orphan*/  PP_SCLK ; 
 int /*<<< orphan*/  FUNC0 (struct pp_hwmgr*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct pp_hwmgr*) ; 
 int FUNC2 (struct pp_hwmgr*) ; 
 int FUNC3 (struct pp_hwmgr*,int,int*,int*,int*) ; 
 int FUNC4 (struct pp_hwmgr*) ; 

__attribute__((used)) static int FUNC5(struct pp_hwmgr *hwmgr,
				enum amd_dpm_forced_level level)
{
	int ret = 0;
	uint32_t sclk_mask = 0;
	uint32_t mclk_mask = 0;
	uint32_t soc_mask = 0;

	switch (level) {
	case AMD_DPM_FORCED_LEVEL_HIGH:
		ret = FUNC1(hwmgr);
		break;
	case AMD_DPM_FORCED_LEVEL_LOW:
		ret = FUNC2(hwmgr);
		break;
	case AMD_DPM_FORCED_LEVEL_AUTO:
		ret = FUNC4(hwmgr);
		break;
	case AMD_DPM_FORCED_LEVEL_PROFILE_STANDARD:
	case AMD_DPM_FORCED_LEVEL_PROFILE_MIN_SCLK:
	case AMD_DPM_FORCED_LEVEL_PROFILE_MIN_MCLK:
	case AMD_DPM_FORCED_LEVEL_PROFILE_PEAK:
		ret = FUNC3(hwmgr, level, &sclk_mask, &mclk_mask, &soc_mask);
		if (ret)
			return ret;
		FUNC0(hwmgr, PP_SCLK, 1 << sclk_mask);
		FUNC0(hwmgr, PP_MCLK, 1 << mclk_mask);
		break;
	case AMD_DPM_FORCED_LEVEL_MANUAL:
	case AMD_DPM_FORCED_LEVEL_PROFILE_EXIT:
	default:
		break;
	}

	return ret;
}