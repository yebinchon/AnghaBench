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
struct TYPE_4__ {scalar_t__ pm_method; } ;
struct TYPE_3__ {int /*<<< orphan*/  atom_context; } ;
struct radeon_device {int accel_working; TYPE_2__ pm; TYPE_1__ mode_info; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ PM_METHOD_DPM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 scalar_t__ FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 

int FUNC7(struct radeon_device *rdev)
{
	int r;

	/* reset the asic, the gfx blocks are often in a bad state
	 * after the driver is unloaded or after a resume
	 */
	if (FUNC5(rdev))
		FUNC2(rdev->dev, "GPU reset failed !\n");
	/* Do not reset GPU before posting, on rv770 hw unlike on r500 hw,
	 * posting will perform necessary task to bring back GPU into good
	 * shape.
	 */
	/* post card */
	FUNC1(rdev->mode_info.atom_context);

	/* init golden registers */
	FUNC3(rdev);

	if (rdev->pm.pm_method == PM_METHOD_DPM)
		FUNC6(rdev);

	rdev->accel_working = true;
	r = FUNC4(rdev);
	if (r) {
		FUNC0("evergreen startup failed on resume\n");
		rdev->accel_working = false;
		return r;
	}

	return r;

}