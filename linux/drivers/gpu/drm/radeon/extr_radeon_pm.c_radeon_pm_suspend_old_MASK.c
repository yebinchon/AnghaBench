#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ pm_method; scalar_t__ dynpm_state; int /*<<< orphan*/  dynpm_idle_work; int /*<<< orphan*/  mutex; } ;
struct radeon_device {TYPE_1__ pm; } ;

/* Variables and functions */
 scalar_t__ DYNPM_STATE_ACTIVE ; 
 scalar_t__ DYNPM_STATE_SUSPENDED ; 
 scalar_t__ PM_METHOD_DYNPM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	FUNC1(&rdev->pm.mutex);
	if (rdev->pm.pm_method == PM_METHOD_DYNPM) {
		if (rdev->pm.dynpm_state == DYNPM_STATE_ACTIVE)
			rdev->pm.dynpm_state = DYNPM_STATE_SUSPENDED;
	}
	FUNC2(&rdev->pm.mutex);

	FUNC0(&rdev->pm.dynpm_idle_work);
}