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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct radeon_ring {int /*<<< orphan*/  idx; int /*<<< orphan*/  last_rptr; int /*<<< orphan*/  last_activity; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ jiffies_64 ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ radeon_lockup_timeout ; 
 scalar_t__ FUNC4 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ring*) ; 

bool FUNC6(struct radeon_device *rdev, struct radeon_ring *ring)
{
	uint32_t rptr = FUNC4(rdev, ring);
	uint64_t last = FUNC0(&ring->last_activity);
	uint64_t elapsed;

	if (rptr != FUNC1(&ring->last_rptr)) {
		/* ring is still working, no lockup */
		FUNC5(rdev, ring);
		return false;
	}

	elapsed = FUNC3(jiffies_64 - last);
	if (radeon_lockup_timeout && elapsed >= radeon_lockup_timeout) {
		FUNC2(rdev->dev, "ring %d stalled for more than %llumsec\n",
			ring->idx, elapsed);
		return true;
	}
	/* give a chance to the GPU ... */
	return false;
}