#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_semaphore {int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/  waiters; } ;
struct radeon_ring {int /*<<< orphan*/  last_semaphore_wait_addr; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*,int,struct radeon_ring*,struct radeon_semaphore*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct radeon_semaphore*) ; 

bool FUNC2(struct radeon_device *rdev, int ridx,
				struct radeon_semaphore *semaphore)
{
	struct radeon_ring *ring = &rdev->ring[ridx];

	FUNC1(ridx, semaphore);

	if (FUNC0(rdev, ridx, ring, semaphore, true)) {
		++semaphore->waiters;

		/* for debugging lockup only, used by sysfs debug files */
		ring->last_semaphore_wait_addr = semaphore->gpu_addr;
		return true;
	}
	return false;
}