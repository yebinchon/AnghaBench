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
struct radeon_semaphore {scalar_t__ waiters; int /*<<< orphan*/  sa_bo; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ *,struct radeon_fence*) ; 

void FUNC3(struct radeon_device *rdev,
			   struct radeon_semaphore **semaphore,
			   struct radeon_fence *fence)
{
	if (semaphore == NULL || *semaphore == NULL) {
		return;
	}
	if ((*semaphore)->waiters > 0) {
		FUNC0(rdev->dev, "semaphore %p has more waiters than signalers,"
			" hardware lockup imminent!\n", *semaphore);
	}
	FUNC2(rdev, &(*semaphore)->sa_bo, fence);
	FUNC1(*semaphore);
	*semaphore = NULL;
}