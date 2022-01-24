#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct radeon_sync {struct radeon_semaphore** semaphores; struct radeon_fence** sync_to; } ;
struct radeon_semaphore {int dummy; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {TYPE_1__* ring; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ready; } ;

/* Variables and functions */
 int EINVAL ; 
 int RADEON_NUM_RINGS ; 
 unsigned int RADEON_NUM_SYNCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_fence*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_fence*,int) ; 
 int FUNC3 (struct radeon_fence*,int) ; 
 int FUNC4 (struct radeon_device*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (struct radeon_device*,struct radeon_semaphore**) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int,struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int,struct radeon_semaphore*) ; 

int FUNC10(struct radeon_device *rdev,
		      struct radeon_sync *sync,
		      int ring)
{
	unsigned count = 0;
	int i, r;

	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		struct radeon_fence *fence = sync->sync_to[i];
		struct radeon_semaphore *semaphore;

		/* check if we really need to sync */
		if (!FUNC1(fence, ring))
			continue;

		/* prevent GPU deadlocks */
		if (!rdev->ring[i].ready) {
			FUNC0(rdev->dev, "Syncing to a disabled ring!");
			return -EINVAL;
		}

		if (count >= RADEON_NUM_SYNCS) {
			/* not enough room, wait manually */
			r = FUNC3(fence, false);
			if (r)
				return r;
			continue;
		}
		r = FUNC7(rdev, &semaphore);
		if (r)
			return r;

		sync->semaphores[count++] = semaphore;

		/* allocate enough space for sync command */
		r = FUNC4(rdev, &rdev->ring[i], 16);
		if (r)
			return r;

		/* emit the signal semaphore */
		if (!FUNC8(rdev, i, semaphore)) {
			/* signaling wasn't successful wait manually */
			FUNC6(&rdev->ring[i]);
			r = FUNC3(fence, false);
			if (r)
				return r;
			continue;
		}

		/* we assume caller has already allocated space on waiters ring */
		if (!FUNC9(rdev, ring, semaphore)) {
			/* waiting wasn't successful wait manually */
			FUNC6(&rdev->ring[i]);
			r = FUNC3(fence, false);
			if (r)
				return r;
			continue;
		}

		FUNC5(rdev, &rdev->ring[i], false);
		FUNC2(fence, ring);
	}

	return 0;
}