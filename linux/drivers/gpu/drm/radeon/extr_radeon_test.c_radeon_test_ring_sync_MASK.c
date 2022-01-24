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
struct radeon_semaphore {int dummy; } ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_fence**) ; 
 int FUNC5 (struct radeon_fence*,int) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ring*,int) ; 
 int FUNC8 (struct radeon_device*,struct radeon_semaphore**) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,struct radeon_semaphore**,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct radeon_device*,struct radeon_ring*,struct radeon_fence**) ; 

void FUNC13(struct radeon_device *rdev,
			   struct radeon_ring *ringA,
			   struct radeon_ring *ringB)
{
	struct radeon_fence *fence1 = NULL, *fence2 = NULL;
	struct radeon_semaphore *semaphore = NULL;
	int r;

	r = FUNC8(rdev, &semaphore);
	if (r) {
		FUNC0("Failed to create semaphore\n");
		goto out_cleanup;
	}

	r = FUNC6(rdev, ringA, 64);
	if (r) {
		FUNC0("Failed to lock ring A %d\n", ringA->idx);
		goto out_cleanup;
	}
	FUNC10(rdev, ringA->idx, semaphore);
	FUNC7(rdev, ringA, false);

	r = FUNC12(rdev, ringA, &fence1);
	if (r)
		goto out_cleanup;

	r = FUNC6(rdev, ringA, 64);
	if (r) {
		FUNC0("Failed to lock ring A %d\n", ringA->idx);
		goto out_cleanup;
	}
	FUNC10(rdev, ringA->idx, semaphore);
	FUNC7(rdev, ringA, false);

	r = FUNC12(rdev, ringA, &fence2);
	if (r)
		goto out_cleanup;

	FUNC1(1000);

	if (FUNC3(fence1)) {
		FUNC0("Fence 1 signaled without waiting for semaphore.\n");
		goto out_cleanup;
	}

	r = FUNC6(rdev, ringB, 64);
	if (r) {
		FUNC0("Failed to lock ring B %p\n", ringB);
		goto out_cleanup;
	}
	FUNC9(rdev, ringB->idx, semaphore);
	FUNC7(rdev, ringB, false);

	r = FUNC5(fence1, false);
	if (r) {
		FUNC0("Failed to wait for sync fence 1\n");
		goto out_cleanup;
	}

	FUNC1(1000);

	if (FUNC3(fence2)) {
		FUNC0("Fence 2 signaled without waiting for semaphore.\n");
		goto out_cleanup;
	}

	r = FUNC6(rdev, ringB, 64);
	if (r) {
		FUNC0("Failed to lock ring B %p\n", ringB);
		goto out_cleanup;
	}
	FUNC9(rdev, ringB->idx, semaphore);
	FUNC7(rdev, ringB, false);

	r = FUNC5(fence2, false);
	if (r) {
		FUNC0("Failed to wait for sync fence 1\n");
		goto out_cleanup;
	}

out_cleanup:
	FUNC11(rdev, &semaphore, NULL);

	if (fence1)
		FUNC4(&fence1);

	if (fence2)
		FUNC4(&fence2);

	if (r)
		FUNC2("Error while testing ring sync (%d)\n", r);
}