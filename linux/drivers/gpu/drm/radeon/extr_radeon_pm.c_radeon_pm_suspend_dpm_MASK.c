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
struct TYPE_3__ {int /*<<< orphan*/  boot_ps; int /*<<< orphan*/  requested_ps; int /*<<< orphan*/  current_ps; } ;
struct TYPE_4__ {int dpm_enabled; int /*<<< orphan*/  mutex; TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC3(struct radeon_device *rdev)
{
	FUNC0(&rdev->pm.mutex);
	/* disable dpm */
	FUNC2(rdev);
	/* reset the power state */
	rdev->pm.dpm.current_ps = rdev->pm.dpm.requested_ps = rdev->pm.dpm.boot_ps;
	rdev->pm.dpm_enabled = false;
	FUNC1(&rdev->pm.mutex);
}