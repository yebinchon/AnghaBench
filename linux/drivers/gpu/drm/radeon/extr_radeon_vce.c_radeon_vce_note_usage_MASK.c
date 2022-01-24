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
struct TYPE_3__ {scalar_t__ pm_method; scalar_t__ dpm_enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  idle_work; } ;
struct radeon_device {TYPE_1__ pm; TYPE_2__ vce; } ;

/* Variables and functions */
 scalar_t__ PM_METHOD_DPM ; 
 int /*<<< orphan*/  VCE_IDLE_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct radeon_device *rdev)
{
	bool streams_changed = false;
	bool set_clocks = !FUNC0(&rdev->vce.idle_work);
	set_clocks &= FUNC4(&rdev->vce.idle_work,
					    FUNC1(VCE_IDLE_TIMEOUT_MS));

	if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {
		/* XXX figure out if the streams changed */
		streams_changed = false;
	}

	if (set_clocks || streams_changed) {
		if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {
			FUNC2(rdev, true);
		} else {
			FUNC3(rdev, 53300, 40000);
		}
	}
}