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
struct TYPE_5__ {unsigned int sd; unsigned int hd; } ;
struct TYPE_6__ {scalar_t__ pm_method; scalar_t__ dpm_enabled; TYPE_2__ dpm; } ;
struct TYPE_4__ {int /*<<< orphan*/  idle_work; } ;
struct radeon_device {TYPE_3__ pm; TYPE_1__ uvd; } ;

/* Variables and functions */
 scalar_t__ PM_METHOD_DPM ; 
 int /*<<< orphan*/  UVD_IDLE_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,unsigned int*,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(struct radeon_device *rdev)
{
	bool streams_changed = false;
	bool set_clocks = !FUNC0(&rdev->uvd.idle_work);
	set_clocks &= FUNC5(&rdev->uvd.idle_work,
					    FUNC1(UVD_IDLE_TIMEOUT_MS));

	if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {
		unsigned hd = 0, sd = 0;
		FUNC4(rdev, &sd, &hd);
		if ((rdev->pm.dpm.sd != sd) ||
		    (rdev->pm.dpm.hd != hd)) {
			rdev->pm.dpm.sd = sd;
			rdev->pm.dpm.hd = hd;
			/* disable this for now */
			/*streams_changed = true;*/
		}
	}

	if (set_clocks || streams_changed) {
		if ((rdev->pm.pm_method == PM_METHOD_DPM) && rdev->pm.dpm_enabled) {
			FUNC2(rdev, true);
		} else {
			FUNC3(rdev, 53300, 40000);
		}
	}
}