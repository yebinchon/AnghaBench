#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int forced_level; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef  enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_SetEnabledLevels ; 
 int /*<<< orphan*/  PPSMC_MSG_SetForcedLevels ; 
 scalar_t__ PPSMC_Result_OK ; 
 int RADEON_DPM_FORCED_LEVEL_AUTO ; 
 int RADEON_DPM_FORCED_LEVEL_HIGH ; 
 int RADEON_DPM_FORCED_LEVEL_LOW ; 
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

int FUNC1(struct radeon_device *rdev,
				   enum radeon_dpm_forced_level level)
{
	if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
		if (FUNC0(rdev, PPSMC_MSG_SetEnabledLevels, 0) != PPSMC_Result_OK)
			return -EINVAL;

		if (FUNC0(rdev, PPSMC_MSG_SetForcedLevels, 1) != PPSMC_Result_OK)
			return -EINVAL;
	} else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
		if (FUNC0(rdev, PPSMC_MSG_SetForcedLevels, 0) != PPSMC_Result_OK)
			return -EINVAL;

		if (FUNC0(rdev, PPSMC_MSG_SetEnabledLevels, 1) != PPSMC_Result_OK)
			return -EINVAL;
	} else if (level == RADEON_DPM_FORCED_LEVEL_AUTO) {
		if (FUNC0(rdev, PPSMC_MSG_SetForcedLevels, 0) != PPSMC_Result_OK)
			return -EINVAL;

		if (FUNC0(rdev, PPSMC_MSG_SetEnabledLevels, 0) != PPSMC_Result_OK)
			return -EINVAL;
	}

	rdev->pm.dpm.forced_level = level;

	return 0;
}