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
struct radeon_ps {int dummy; } ;
struct TYPE_3__ {struct radeon_ps* requested_ps; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int FUNC0 (struct radeon_device*,struct radeon_ps*) ; 
 int FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC5(struct radeon_device *rdev)
{
	struct radeon_ps *new_ps = rdev->pm.dpm.requested_ps;
	int ret;

	ret = FUNC1(rdev);
	if (ret)
		return ret;
	ret = FUNC2(rdev);
	if (ret)
		return ret;
	ret = FUNC0(rdev, new_ps);
	if (ret)
		return ret;
	ret = FUNC3(rdev);
	if (ret)
		return ret;
	ret = FUNC4(rdev);
	if (ret)
		return ret;

	return 0;
}