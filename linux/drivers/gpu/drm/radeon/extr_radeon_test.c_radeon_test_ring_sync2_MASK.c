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
 int /*<<< orphan*/  FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_fence**) ; 
 int FUNC6 (struct radeon_fence*,int) ; 
 int FUNC7 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ring*,int) ; 
 int FUNC9 (struct radeon_device*,struct radeon_semaphore**) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_semaphore*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*,struct radeon_semaphore**,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct radeon_device*,struct radeon_ring*,struct radeon_fence**) ; 

__attribute__((used)) static void FUNC14(struct radeon_device *rdev,
			    struct radeon_ring *ringA,
			    struct radeon_ring *ringB,
			    struct radeon_ring *ringC)
{
	struct radeon_fence *fenceA = NULL, *fenceB = NULL;
	struct radeon_semaphore *semaphore = NULL;
	bool sigA, sigB;
	int i, r;

	r = FUNC9(rdev, &semaphore);
	if (r) {
		FUNC0("Failed to create semaphore\n");
		goto out_cleanup;
	}

	r = FUNC7(rdev, ringA, 64);
	if (r) {
		FUNC0("Failed to lock ring A %d\n", ringA->idx);
		goto out_cleanup;
	}
	FUNC11(rdev, ringA->idx, semaphore);
	FUNC8(rdev, ringA, false);

	r = FUNC13(rdev, ringA, &fenceA);
	if (r)
		goto out_cleanup;

	r = FUNC7(rdev, ringB, 64);
	if (r) {
		FUNC0("Failed to lock ring B %d\n", ringB->idx);
		goto out_cleanup;
	}
	FUNC11(rdev, ringB->idx, semaphore);
	FUNC8(rdev, ringB, false);
	r = FUNC13(rdev, ringB, &fenceB);
	if (r)
		goto out_cleanup;

	FUNC2(1000);

	if (FUNC4(fenceA)) {
		FUNC0("Fence A signaled without waiting for semaphore.\n");
		goto out_cleanup;
	}
	if (FUNC4(fenceB)) {
		FUNC0("Fence B signaled without waiting for semaphore.\n");
		goto out_cleanup;
	}

	r = FUNC7(rdev, ringC, 64);
	if (r) {
		FUNC0("Failed to lock ring B %p\n", ringC);
		goto out_cleanup;
	}
	FUNC10(rdev, ringC->idx, semaphore);
	FUNC8(rdev, ringC, false);

	for (i = 0; i < 30; ++i) {
		FUNC2(100);
		sigA = FUNC4(fenceA);
		sigB = FUNC4(fenceB);
		if (sigA || sigB)
			break;
	}

	if (!sigA && !sigB) {
		FUNC0("Neither fence A nor B has been signaled\n");
		goto out_cleanup;
	} else if (sigA && sigB) {
		FUNC0("Both fence A and B has been signaled\n");
		goto out_cleanup;
	}

	FUNC1("Fence %c was first signaled\n", sigA ? 'A' : 'B');

	r = FUNC7(rdev, ringC, 64);
	if (r) {
		FUNC0("Failed to lock ring B %p\n", ringC);
		goto out_cleanup;
	}
	FUNC10(rdev, ringC->idx, semaphore);
	FUNC8(rdev, ringC, false);

	FUNC2(1000);

	r = FUNC6(fenceA, false);
	if (r) {
		FUNC0("Failed to wait for sync fence A\n");
		goto out_cleanup;
	}
	r = FUNC6(fenceB, false);
	if (r) {
		FUNC0("Failed to wait for sync fence B\n");
		goto out_cleanup;
	}

out_cleanup:
	FUNC12(rdev, &semaphore, NULL);

	if (fenceA)
		FUNC5(&fenceA);

	if (fenceB)
		FUNC5(&fenceB);

	if (r)
		FUNC3("Error while testing ring sync (%d)\n", r);
}