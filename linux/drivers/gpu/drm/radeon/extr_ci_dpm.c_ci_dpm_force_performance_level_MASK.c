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
typedef  int u32 ;
struct TYPE_5__ {int forced_level; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {int usec_timeout; TYPE_3__ pm; } ;
struct TYPE_4__ {int pcie_dpm_enable_mask; int sclk_dpm_enable_mask; int mclk_dpm_enable_mask; } ;
struct ci_power_info {int /*<<< orphan*/  pcie_dpm_key_disabled; TYPE_1__ dpm_level_enable_mask; int /*<<< orphan*/  mclk_dpm_key_disabled; int /*<<< orphan*/  sclk_dpm_key_disabled; } ;
typedef  enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;
typedef  scalar_t__ PPSMC_Result ;

/* Variables and functions */
 int CURR_MCLK_INDEX_MASK ; 
 int CURR_MCLK_INDEX_SHIFT ; 
 int CURR_PCIE_INDEX_MASK ; 
 int CURR_PCIE_INDEX_SHIFT ; 
 int CURR_SCLK_INDEX_MASK ; 
 int CURR_SCLK_INDEX_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_PCIeDPM_UnForceLevel ; 
 scalar_t__ PPSMC_Result_OK ; 
 int RADEON_DPM_FORCED_LEVEL_AUTO ; 
 int RADEON_DPM_FORCED_LEVEL_HIGH ; 
 int RADEON_DPM_FORCED_LEVEL_LOW ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX ; 
 int /*<<< orphan*/  TARGET_AND_CURRENT_PROFILE_INDEX_1 ; 
 int FUNC1 (struct radeon_device*,int) ; 
 int FUNC2 (struct radeon_device*,int) ; 
 int FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (struct radeon_device*,int) ; 
 struct ci_power_info* FUNC5 (struct radeon_device*) ; 
 scalar_t__ FUNC6 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9(struct radeon_device *rdev,
				   enum radeon_dpm_forced_level level)
{
	struct ci_power_info *pi = FUNC5(rdev);
	u32 tmp, levels, i;
	int ret;

	if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
		if ((!pi->pcie_dpm_key_disabled) &&
		    pi->dpm_level_enable_mask.pcie_dpm_enable_mask) {
			levels = 0;
			tmp = pi->dpm_level_enable_mask.pcie_dpm_enable_mask;
			while (tmp >>= 1)
				levels++;
			if (levels) {
				ret = FUNC2(rdev, level);
				if (ret)
					return ret;
				for (i = 0; i < rdev->usec_timeout; i++) {
					tmp = (FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX_1) &
					       CURR_PCIE_INDEX_MASK) >> CURR_PCIE_INDEX_SHIFT;
					if (tmp == levels)
						break;
					FUNC8(1);
				}
			}
		}
		if ((!pi->sclk_dpm_key_disabled) &&
		    pi->dpm_level_enable_mask.sclk_dpm_enable_mask) {
			levels = 0;
			tmp = pi->dpm_level_enable_mask.sclk_dpm_enable_mask;
			while (tmp >>= 1)
				levels++;
			if (levels) {
				ret = FUNC3(rdev, levels);
				if (ret)
					return ret;
				for (i = 0; i < rdev->usec_timeout; i++) {
					tmp = (FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) &
					       CURR_SCLK_INDEX_MASK) >> CURR_SCLK_INDEX_SHIFT;
					if (tmp == levels)
						break;
					FUNC8(1);
				}
			}
		}
		if ((!pi->mclk_dpm_key_disabled) &&
		    pi->dpm_level_enable_mask.mclk_dpm_enable_mask) {
			levels = 0;
			tmp = pi->dpm_level_enable_mask.mclk_dpm_enable_mask;
			while (tmp >>= 1)
				levels++;
			if (levels) {
				ret = FUNC1(rdev, levels);
				if (ret)
					return ret;
				for (i = 0; i < rdev->usec_timeout; i++) {
					tmp = (FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) &
					       CURR_MCLK_INDEX_MASK) >> CURR_MCLK_INDEX_SHIFT;
					if (tmp == levels)
						break;
					FUNC8(1);
				}
			}
		}
	} else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
		if ((!pi->sclk_dpm_key_disabled) &&
		    pi->dpm_level_enable_mask.sclk_dpm_enable_mask) {
			levels = FUNC4(rdev,
							     pi->dpm_level_enable_mask.sclk_dpm_enable_mask);
			ret = FUNC3(rdev, levels);
			if (ret)
				return ret;
			for (i = 0; i < rdev->usec_timeout; i++) {
				tmp = (FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) &
				       CURR_SCLK_INDEX_MASK) >> CURR_SCLK_INDEX_SHIFT;
				if (tmp == levels)
					break;
				FUNC8(1);
			}
		}
		if ((!pi->mclk_dpm_key_disabled) &&
		    pi->dpm_level_enable_mask.mclk_dpm_enable_mask) {
			levels = FUNC4(rdev,
							     pi->dpm_level_enable_mask.mclk_dpm_enable_mask);
			ret = FUNC1(rdev, levels);
			if (ret)
				return ret;
			for (i = 0; i < rdev->usec_timeout; i++) {
				tmp = (FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX) &
				       CURR_MCLK_INDEX_MASK) >> CURR_MCLK_INDEX_SHIFT;
				if (tmp == levels)
					break;
				FUNC8(1);
			}
		}
		if ((!pi->pcie_dpm_key_disabled) &&
		    pi->dpm_level_enable_mask.pcie_dpm_enable_mask) {
			levels = FUNC4(rdev,
							     pi->dpm_level_enable_mask.pcie_dpm_enable_mask);
			ret = FUNC2(rdev, levels);
			if (ret)
				return ret;
			for (i = 0; i < rdev->usec_timeout; i++) {
				tmp = (FUNC0(TARGET_AND_CURRENT_PROFILE_INDEX_1) &
				       CURR_PCIE_INDEX_MASK) >> CURR_PCIE_INDEX_SHIFT;
				if (tmp == levels)
					break;
				FUNC8(1);
			}
		}
	} else if (level == RADEON_DPM_FORCED_LEVEL_AUTO) {
		if (!pi->pcie_dpm_key_disabled) {
			PPSMC_Result smc_result;

			smc_result = FUNC6(rdev,
							PPSMC_MSG_PCIeDPM_UnForceLevel);
			if (smc_result != PPSMC_Result_OK)
				return -EINVAL;
		}
		ret = FUNC7(rdev);
		if (ret)
			return ret;
	}

	rdev->pm.dpm.forced_level = level;

	return 0;
}