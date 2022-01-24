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
typedef  int /*<<< orphan*/  u32 ;
struct radeon_ring {int rptr_offs; int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; scalar_t__ enabled; } ;
struct radeon_device {int /*<<< orphan*/  srbm_mutex; TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_HQD_PQ_RPTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u32 FUNC4(struct radeon_device *rdev,
			 struct radeon_ring *ring)
{
	u32 rptr;

	if (rdev->wb.enabled) {
		rptr = rdev->wb.wb[ring->rptr_offs/4];
	} else {
		FUNC2(&rdev->srbm_mutex);
		FUNC1(rdev, ring->me, ring->pipe, ring->queue, 0);
		rptr = FUNC0(CP_HQD_PQ_RPTR);
		FUNC1(rdev, 0, 0, 0, 0);
		FUNC3(&rdev->srbm_mutex);
	}

	return rptr;
}