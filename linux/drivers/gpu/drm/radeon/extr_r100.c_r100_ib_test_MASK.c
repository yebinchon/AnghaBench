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
struct radeon_ib {int* ptr; int length_dw; int /*<<< orphan*/  fence; } ;
struct radeon_device {unsigned int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_USEC_IB_TEST_TIMEOUT ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC8 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,int) ; 
 int FUNC11 (struct radeon_device*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct radeon_device *rdev, struct radeon_ring *ring)
{
	struct radeon_ib ib;
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC11(rdev, &scratch);
	if (r) {
		FUNC0("radeon: failed to get scratch reg (%d).\n", r);
		return r;
	}
	FUNC5(scratch, 0xCAFEDEAD);
	r = FUNC8(rdev, RADEON_RING_TYPE_GFX_INDEX, &ib, NULL, 256);
	if (r) {
		FUNC0("radeon: failed to get ib (%d).\n", r);
		goto free_scratch;
	}
	ib.ptr[0] = FUNC2(scratch, 0);
	ib.ptr[1] = 0xDEADBEEF;
	ib.ptr[2] = FUNC3(0);
	ib.ptr[3] = FUNC3(0);
	ib.ptr[4] = FUNC3(0);
	ib.ptr[5] = FUNC3(0);
	ib.ptr[6] = FUNC3(0);
	ib.ptr[7] = FUNC3(0);
	ib.length_dw = 8;
	r = FUNC9(rdev, &ib, NULL, false);
	if (r) {
		FUNC0("radeon: failed to schedule ib (%d).\n", r);
		goto free_ib;
	}
	r = FUNC6(ib.fence, false, FUNC13(
		RADEON_USEC_IB_TEST_TIMEOUT));
	if (r < 0) {
		FUNC0("radeon: fence wait failed (%d).\n", r);
		goto free_ib;
	} else if (r == 0) {
		FUNC0("radeon: fence wait timed out.\n");
		r = -ETIMEDOUT;
		goto free_ib;
	}
	r = 0;
	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC4(scratch);
		if (tmp == 0xDEADBEEF) {
			break;
		}
		FUNC12(1);
	}
	if (i < rdev->usec_timeout) {
		FUNC1("ib test succeeded in %u usecs\n", i);
	} else {
		FUNC0("radeon: ib test failed (scratch(0x%04X)=0x%08X)\n",
			  scratch, tmp);
		r = -EINVAL;
	}
free_ib:
	FUNC7(rdev, &ib);
free_scratch:
	FUNC10(rdev, scratch);
	return r;
}