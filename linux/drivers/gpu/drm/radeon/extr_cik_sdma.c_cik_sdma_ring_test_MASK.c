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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct radeon_ring {scalar_t__ idx; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; scalar_t__ gpu_addr; } ;
struct radeon_device {unsigned int usec_timeout; TYPE_1__ wb; } ;

/* Variables and functions */
 unsigned int CAYMAN_WB_DMA1_RING_TEST_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,unsigned int) ; 
 int EINVAL ; 
 scalar_t__ R600_RING_TYPE_DMA_INDEX ; 
 unsigned int R600_WB_DMA_RING_TEST_OFFSET ; 
 int /*<<< orphan*/  SDMA_OPCODE_WRITE ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDMA_WRITE_SUB_OPCODE_LINEAR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (scalar_t__) ; 

int FUNC11(struct radeon_device *rdev,
		       struct radeon_ring *ring)
{
	unsigned i;
	int r;
	unsigned index;
	u32 tmp;
	u64 gpu_addr;

	if (ring->idx == R600_RING_TYPE_DMA_INDEX)
		index = R600_WB_DMA_RING_TEST_OFFSET;
	else
		index = CAYMAN_WB_DMA1_RING_TEST_OFFSET;

	gpu_addr = rdev->wb.gpu_addr + index;

	tmp = 0xCAFEDEAD;
	rdev->wb.wb[index/4] = FUNC3(tmp);

	r = FUNC6(rdev, ring, 5);
	if (r) {
		FUNC0("radeon: dma failed to lock ring %d (%d).\n", ring->idx, r);
		return r;
	}
	FUNC8(ring, FUNC2(SDMA_OPCODE_WRITE, SDMA_WRITE_SUB_OPCODE_LINEAR, 0));
	FUNC8(ring, FUNC5(gpu_addr));
	FUNC8(ring, FUNC10(gpu_addr));
	FUNC8(ring, 1); /* number of DWs to follow */
	FUNC8(ring, 0xDEADBEEF);
	FUNC7(rdev, ring, false);

	for (i = 0; i < rdev->usec_timeout; i++) {
		tmp = FUNC4(rdev->wb.wb[index/4]);
		if (tmp == 0xDEADBEEF)
			break;
		FUNC9(1);
	}

	if (i < rdev->usec_timeout) {
		FUNC1("ring test on %d succeeded in %d usecs\n", ring->idx, i);
	} else {
		FUNC0("radeon: ring %d test failed (0x%08X)\n",
			  ring->idx, tmp);
		r = -EINVAL;
	}
	return r;
}