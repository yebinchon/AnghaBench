#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct radeon_ring {int /*<<< orphan*/  idx; } ;
struct radeon_ib {int* ptr; int length_dw; TYPE_1__* fence; } ;
struct radeon_device {unsigned int usec_timeout; } ;
struct TYPE_2__ {int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_OFFSET ; 
 int /*<<< orphan*/  RADEON_USEC_IB_TEST_TIMEOUT ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC7 (struct radeon_device*,int /*<<< orphan*/ ,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int) ; 
 int FUNC10 (struct radeon_device*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

int FUNC13(struct radeon_device *rdev, struct radeon_ring *ring)
{
	struct radeon_ib ib;
	uint32_t scratch;
	uint32_t tmp = 0;
	unsigned i;
	int r;

	r = FUNC10(rdev, &scratch);
	if (r) {
		FUNC0("radeon: failed to get scratch reg (%d).\n", r);
		return r;
	}
	FUNC4(scratch, 0xCAFEDEAD);
	r = FUNC7(rdev, ring->idx, &ib, NULL, 256);
	if (r) {
		FUNC0("radeon: failed to get ib (%d).\n", r);
		goto free_scratch;
	}
	ib.ptr[0] = FUNC2(PACKET3_SET_CONFIG_REG, 1);
	ib.ptr[1] = ((scratch - PACKET3_SET_CONFIG_REG_OFFSET) >> 2);
	ib.ptr[2] = 0xDEADBEEF;
	ib.length_dw = 3;
	r = FUNC8(rdev, &ib, NULL, false);
	if (r) {
		FUNC0("radeon: failed to schedule ib (%d).\n", r);
		goto free_ib;
	}
	r = FUNC5(ib.fence, false, FUNC12(
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
		tmp = FUNC3(scratch);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC11(1);
	}
	if (i < rdev->usec_timeout) {
		FUNC1("ib test on ring %d succeeded in %u usecs\n", ib.fence->ring, i);
	} else {
		FUNC0("radeon: ib test failed (scratch(0x%04X)=0x%08X)\n",
			  scratch, tmp);
		r = -EINVAL;
	}
free_ib:
	FUNC6(rdev, &ib);
free_scratch:
	FUNC9(rdev, scratch);
	return r;
}