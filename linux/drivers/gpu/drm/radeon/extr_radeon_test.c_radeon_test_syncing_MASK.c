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
struct radeon_ring {int /*<<< orphan*/  ready; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int RADEON_NUM_RINGS ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ring*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,struct radeon_ring*,struct radeon_ring*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_ring*,struct radeon_ring*) ; 

void FUNC4(struct radeon_device *rdev)
{
	int i, j, k;

	for (i = 1; i < RADEON_NUM_RINGS; ++i) {
		struct radeon_ring *ringA = &rdev->ring[i];
		if (!ringA->ready)
			continue;

		for (j = 0; j < i; ++j) {
			struct radeon_ring *ringB = &rdev->ring[j];
			if (!ringB->ready)
				continue;

			if (!FUNC3(ringA, ringB))
				continue;

			FUNC0("Testing syncing between rings %d and %d...\n", i, j);
			FUNC1(rdev, ringA, ringB);

			FUNC0("Testing syncing between rings %d and %d...\n", j, i);
			FUNC1(rdev, ringB, ringA);

			for (k = 0; k < j; ++k) {
				struct radeon_ring *ringC = &rdev->ring[k];
				if (!ringC->ready)
					continue;

				if (!FUNC3(ringA, ringC))
					continue;

				if (!FUNC3(ringB, ringC))
					continue;

				FUNC0("Testing syncing between rings %d, %d and %d...\n", i, j, k);
				FUNC2(rdev, ringA, ringB, ringC);

				FUNC0("Testing syncing between rings %d, %d and %d...\n", i, k, j);
				FUNC2(rdev, ringA, ringC, ringB);

				FUNC0("Testing syncing between rings %d, %d and %d...\n", j, i, k);
				FUNC2(rdev, ringB, ringA, ringC);

				FUNC0("Testing syncing between rings %d, %d and %d...\n", j, k, i);
				FUNC2(rdev, ringB, ringC, ringA);

				FUNC0("Testing syncing between rings %d, %d and %d...\n", k, i, j);
				FUNC2(rdev, ringC, ringA, ringB);

				FUNC0("Testing syncing between rings %d, %d and %d...\n", k, j, i);
				FUNC2(rdev, ringC, ringB, ringA);
			}
		}
	}
}