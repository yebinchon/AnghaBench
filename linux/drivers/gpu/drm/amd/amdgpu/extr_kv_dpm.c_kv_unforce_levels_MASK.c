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
struct amdgpu_device {scalar_t__ asic_type; } ;

/* Variables and functions */
 scalar_t__ CHIP_KABINI ; 
 scalar_t__ CHIP_MULLINS ; 
 int /*<<< orphan*/  PPSMC_MSG_NoForcedLevel ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev)
{
	if (adev->asic_type == CHIP_KABINI || adev->asic_type == CHIP_MULLINS)
		return FUNC0(adev, PPSMC_MSG_NoForcedLevel);
	else
		return FUNC1(adev);
}