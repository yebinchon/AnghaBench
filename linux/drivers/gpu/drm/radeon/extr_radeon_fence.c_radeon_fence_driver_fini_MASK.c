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
struct radeon_device {int /*<<< orphan*/  ring_lock; TYPE_1__* fence_drv; int /*<<< orphan*/  fence_queue; } ;
struct TYPE_2__ {int initialized; int /*<<< orphan*/  scratch_reg; int /*<<< orphan*/  lockup_work; } ;

/* Variables and functions */
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int FUNC4 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct radeon_device *rdev)
{
	int ring, r;

	FUNC1(&rdev->ring_lock);
	for (ring = 0; ring < RADEON_NUM_RINGS; ring++) {
		if (!rdev->fence_drv[ring].initialized)
			continue;
		r = FUNC4(rdev, ring);
		if (r) {
			/* no need to trigger GPU reset as we are unloading */
			FUNC3(rdev, ring);
		}
		FUNC0(&rdev->fence_drv[ring].lockup_work);
		FUNC6(&rdev->fence_queue);
		FUNC5(rdev, rdev->fence_drv[ring].scratch_reg);
		rdev->fence_drv[ring].initialized = false;
	}
	FUNC2(&rdev->ring_lock);
}