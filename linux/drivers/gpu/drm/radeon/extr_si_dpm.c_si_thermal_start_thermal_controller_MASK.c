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
struct radeon_device {TYPE_3__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  R600_TEMP_RANGE_MAX ; 
 int /*<<< orphan*/  R600_TEMP_RANGE_MIN ; 
 int FUNC0 (struct radeon_device*) ; 
 int FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC7(struct radeon_device *rdev)
{
	int ret;

	FUNC3(rdev);
	ret = FUNC4(rdev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
	if (ret)
		return ret;
	ret = FUNC2(rdev, true);
	if (ret)
		return ret;
	if (rdev->pm.dpm.fan.ucode_fan_control) {
		ret = FUNC0(rdev);
		if (ret)
			return ret;
		ret = FUNC5(rdev);
		if (ret)
			return ret;
		ret = FUNC1(rdev);
		if (ret)
			return ret;
		FUNC6(rdev);
	}

	return 0;
}