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
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  RADEON_USEC_IB_TEST_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_fence**) ; 
 int FUNC3 (struct radeon_fence*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct radeon_device*,int /*<<< orphan*/ ,int,struct radeon_fence**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct radeon_device *rdev, struct radeon_ring *ring)
{
	struct radeon_fence *fence = NULL;
	int r;

	r = FUNC4(rdev, ring->idx, 1, NULL);
	if (r) {
		FUNC0("radeon: failed to get create msg (%d).\n", r);
		goto error;
	}

	r = FUNC5(rdev, ring->idx, 1, &fence);
	if (r) {
		FUNC0("radeon: failed to get destroy ib (%d).\n", r);
		goto error;
	}

	r = FUNC3(fence, false, FUNC6(
		RADEON_USEC_IB_TEST_TIMEOUT));
	if (r < 0) {
		FUNC0("radeon: fence wait failed (%d).\n", r);
	} else if (r == 0) {
		FUNC0("radeon: fence wait timed out.\n");
		r = -ETIMEDOUT;
	} else {
		FUNC1("ib test on ring %d succeeded\n", ring->idx);
		r = 0;
	}
error:
	FUNC2(&fence);
	return r;
}