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
typedef  int /*<<< orphan*/  u64 ;
struct radeon_device {int /*<<< orphan*/  ddev; scalar_t__ needs_reset; int /*<<< orphan*/  fence_queue; } ;

/* Variables and functions */
 long EDEADLK ; 
 int RADEON_NUM_RINGS ; 
 scalar_t__ FUNC0 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ ,int,long) ; 
 long FUNC6 (int /*<<< orphan*/ ,int,long) ; 

__attribute__((used)) static long FUNC7(struct radeon_device *rdev,
					  u64 *target_seq, bool intr,
					  long timeout)
{
	long r;
	int i;

	if (FUNC0(rdev, target_seq))
		return timeout;

	/* enable IRQs and tracing */
	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		if (!target_seq[i])
			continue;

		FUNC3(rdev->ddev, i, target_seq[i]);
		FUNC1(rdev, i);
	}

	if (intr) {
		r = FUNC5(rdev->fence_queue, (
			FUNC0(rdev, target_seq)
			 || rdev->needs_reset), timeout);
	} else {
		r = FUNC6(rdev->fence_queue, (
			FUNC0(rdev, target_seq)
			 || rdev->needs_reset), timeout);
	}

	if (rdev->needs_reset)
		r = -EDEADLK;

	for (i = 0; i < RADEON_NUM_RINGS; ++i) {
		if (!target_seq[i])
			continue;

		FUNC2(rdev, i);
		FUNC4(rdev->ddev, i, target_seq[i]);
	}

	return r;
}