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
typedef  int u32 ;
struct amdgpu_device {scalar_t__ asic_type; } ;

/* Variables and functions */
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  PPSMC_MSG_DPM_ForceState ; 
 int SMU7_MAX_LEVELS_GRAPHICS ; 
 int FUNC0 (struct amdgpu_device*,int*) ; 
 int FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC3(struct amdgpu_device *adev)
{
	int ret;
	u32 enable_mask, i;

	ret = FUNC0(adev, &enable_mask);
	if (ret)
		return ret;

	for (i = 0; i < SMU7_MAX_LEVELS_GRAPHICS; i++) {
		if (enable_mask & (1 << i))
			break;
	}

	if (adev->asic_type == CHIP_KABINI || adev->asic_type == CHIP_MULLINS)
		return FUNC1(adev, PPSMC_MSG_DPM_ForceState, i);
	else
		return FUNC2(adev, i);
}