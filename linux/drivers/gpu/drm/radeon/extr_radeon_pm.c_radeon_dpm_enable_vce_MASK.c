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
struct TYPE_4__ {int vce_active; int /*<<< orphan*/  vce_level; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; TYPE_2__ dpm; } ;
struct radeon_device {TYPE_1__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_VCE_LEVEL_AC_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

void FUNC3(struct radeon_device *rdev, bool enable)
{
	if (enable) {
		FUNC0(&rdev->pm.mutex);
		rdev->pm.dpm.vce_active = true;
		/* XXX select vce level based on ring/task */
		rdev->pm.dpm.vce_level = RADEON_VCE_LEVEL_AC_ALL;
		FUNC1(&rdev->pm.mutex);
	} else {
		FUNC0(&rdev->pm.mutex);
		rdev->pm.dpm.vce_active = false;
		FUNC1(&rdev->pm.mutex);
	}

	FUNC2(rdev);
}