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
typedef  scalar_t__ uint32_t ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  VCE_CMD_END ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct radeon_device*,struct radeon_ring*) ; 

int FUNC8(struct radeon_device *rdev, struct radeon_ring *ring)
{
	uint32_t rptr = FUNC7(rdev, ring);
	unsigned i;
	int r;

	r = FUNC3(rdev, ring, 16);
	if (r) {
		FUNC0("radeon: vce failed to lock ring %d (%d).\n",
			  ring->idx, r);
		return r;
	}
	FUNC5(ring, FUNC2(VCE_CMD_END));
	FUNC4(rdev, ring, false);

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC7(rdev, ring) != rptr)
			break;
		FUNC6(1);
	}

	if (i < rdev->usec_timeout) {
		FUNC1("ring test on %d succeeded in %d usecs\n",
			 ring->idx, i);
	} else {
		FUNC0("radeon: ring %d test failed\n",
			 ring->idx);
		r = -ETIMEDOUT;
	}

	return r;
}