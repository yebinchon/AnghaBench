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
struct radeon_ring {int dummy; } ;
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int EINVAL ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int) ; 
 int FUNC9 (struct radeon_device*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

int FUNC11(struct radeon_device *rdev, struct radeon_ring *ring)
{
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC9(rdev, &scratch);
	if (r) {
		FUNC0("radeon: cp failed to get scratch reg (%d).\n", r);
		return r;
	}
	FUNC4(scratch, 0xCAFEDEAD);
	r = FUNC5(rdev, ring, 2);
	if (r) {
		FUNC0("radeon: cp failed to lock ring (%d).\n", r);
		FUNC8(rdev, scratch);
		return r;
	}
	FUNC7(ring, FUNC2(scratch, 0));
	FUNC7(ring, 0xDEADBEEF);
	FUNC6(rdev, ring, false);
	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC3(scratch);
		if (tmp == 0xDEADBEEF) {
			break;
		}
		FUNC10(1);
	}
	if (i < rdev->usec_timeout) {
		FUNC1("ring test succeeded in %d usecs\n", i);
	} else {
		FUNC0("radeon: ring test failed (scratch(0x%04X)=0x%08X)\n",
			  scratch, tmp);
		r = -EINVAL;
	}
	FUNC8(rdev, scratch);
	return r;
}