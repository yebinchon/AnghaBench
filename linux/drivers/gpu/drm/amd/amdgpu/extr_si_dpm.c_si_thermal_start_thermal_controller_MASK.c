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
struct TYPE_4__ {scalar_t__ ucode_fan_control; } ;
struct TYPE_5__ {TYPE_1__ fan; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_TEMP_RANGE_MAX ; 
 int /*<<< orphan*/  R600_TEMP_RANGE_MIN ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	int ret;

	FUNC3(adev);
	ret = FUNC4(adev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
	if (ret)
		return ret;
	ret = FUNC2(adev, true);
	if (ret)
		return ret;
	if (adev->pm.dpm.fan.ucode_fan_control) {
		ret = FUNC0(adev);
		if (ret)
			return ret;
		ret = FUNC5(adev);
		if (ret)
			return ret;
		ret = FUNC1(adev);
		if (ret)
			return ret;
		FUNC6(adev);
	}

	return 0;
}