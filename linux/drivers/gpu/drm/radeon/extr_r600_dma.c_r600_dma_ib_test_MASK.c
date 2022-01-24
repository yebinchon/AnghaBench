#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct radeon_ring {scalar_t__ idx; } ;
struct radeon_ib {int* ptr; int length_dw; TYPE_2__* fence; } ;
struct TYPE_3__ {int /*<<< orphan*/ * wb; scalar_t__ gpu_addr; } ;
struct radeon_device {unsigned int usec_timeout; TYPE_1__ wb; } ;
struct TYPE_4__ {int /*<<< orphan*/  ring; } ;

/* Variables and functions */
 unsigned int CAYMAN_WB_DMA1_RING_TEST_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DMA_PACKET_WRITE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ R600_RING_TYPE_DMA_INDEX ; 
 unsigned int R600_WB_DMA_RING_TEST_OFFSET ; 
 int /*<<< orphan*/  RADEON_USEC_IB_TEST_TIMEOUT ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ib*) ; 
 int FUNC7 (struct radeon_device*,scalar_t__,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct radeon_device*,struct radeon_ib*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct radeon_device *rdev, struct radeon_ring *ring)
{
	struct radeon_ib ib;
	unsigned i;
	unsigned index;
	int r;
	u32 tmp = 0;
	u64 gpu_addr;

	if (ring->idx == R600_RING_TYPE_DMA_INDEX)
		index = R600_WB_DMA_RING_TEST_OFFSET;
	else
		index = CAYMAN_WB_DMA1_RING_TEST_OFFSET;

	gpu_addr = rdev->wb.gpu_addr + index;

	r = FUNC7(rdev, ring->idx, &ib, NULL, 256);
	if (r) {
		FUNC1("radeon: failed to get ib (%d).\n", r);
		return r;
	}

	ib.ptr[0] = FUNC0(DMA_PACKET_WRITE, 0, 0, 1);
	ib.ptr[1] = FUNC4(gpu_addr);
	ib.ptr[2] = FUNC10(gpu_addr) & 0xff;
	ib.ptr[3] = 0xDEADBEEF;
	ib.length_dw = 4;

	r = FUNC8(rdev, &ib, NULL, false);
	if (r) {
		FUNC6(rdev, &ib);
		FUNC1("radeon: failed to schedule ib (%d).\n", r);
		return r;
	}
	r = FUNC5(ib.fence, false, FUNC11(
		RADEON_USEC_IB_TEST_TIMEOUT));
	if (r < 0) {
		FUNC1("radeon: fence wait failed (%d).\n", r);
		return r;
	} else if (r == 0) {
		FUNC1("radeon: fence wait timed out.\n");
		return -ETIMEDOUT;
	}
	r = 0;
	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC3(rdev->wb.wb[index/4]);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC9(1);
	}
	if (i < rdev->usec_timeout) {
		FUNC2("ib test on ring %d succeeded in %u usecs\n", ib.fence->ring, i);
	} else {
		FUNC1("radeon: ib test failed (0x%08X)\n", tmp);
		r = -EINVAL;
	}
	FUNC6(rdev, &ib);
	return r;
}