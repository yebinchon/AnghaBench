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
typedef  int uint32_t ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UVD_CONTEXT_ID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

int FUNC9(struct radeon_device *rdev, struct radeon_ring *ring)
{
	uint32_t tmp = 0;
	unsigned i;
	int r;

	FUNC4(UVD_CONTEXT_ID, 0xCAFEDEAD);
	r = FUNC5(rdev, ring, 3);
	if (r) {
		FUNC0("radeon: cp failed to lock ring %d (%d).\n",
			  ring->idx, r);
		return r;
	}
	FUNC7(ring, FUNC2(UVD_CONTEXT_ID, 0));
	FUNC7(ring, 0xDEADBEEF);
	FUNC6(rdev, ring, false);
	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC3(UVD_CONTEXT_ID);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC8(1);
	}

	if (i < rdev->usec_timeout) {
		FUNC1("ring test on %d succeeded in %d usecs\n",
			 ring->idx, i);
	} else {
		FUNC0("radeon: ring %d test failed (0x%08X)\n",
			  ring->idx, tmp);
		r = -EINVAL;
	}
	return r;
}