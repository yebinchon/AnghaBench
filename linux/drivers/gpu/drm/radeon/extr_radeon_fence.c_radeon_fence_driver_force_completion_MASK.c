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
struct radeon_device {TYPE_1__* fence_drv; } ;
struct TYPE_2__ {int /*<<< orphan*/  lockup_work; int /*<<< orphan*/ * sync_seq; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct radeon_device *rdev, int ring)
{
	if (rdev->fence_drv[ring].initialized) {
		FUNC1(rdev, rdev->fence_drv[ring].sync_seq[ring], ring);
		FUNC0(&rdev->fence_drv[ring].lockup_work);
	}
}