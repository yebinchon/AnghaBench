#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct radeon_ring {int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; TYPE_2__* vm; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_3__ wb; struct radeon_ring* ring; } ;
struct TYPE_5__ {TYPE_1__* ids; } ;
struct TYPE_4__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_OPCODE_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  SDMA_OPCODE_NOP ; 
 int /*<<< orphan*/  SDMA_OPCODE_WRITE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SDMA_WRITE_SUB_OPCODE_LINEAR ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 
 int FUNC2 (int) ; 

void FUNC3(struct radeon_device *rdev,
			      struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];
	u32 extra_bits = (ib->vm ? ib->vm->ids[ib->ring].id : 0) & 0xf;

	if (rdev->wb.enabled) {
		u32 next_rptr = ring->wptr + 5;
		while ((next_rptr & 7) != 4)
			next_rptr++;
		next_rptr += 4;
		FUNC1(ring, FUNC0(SDMA_OPCODE_WRITE, SDMA_WRITE_SUB_OPCODE_LINEAR, 0));
		FUNC1(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
		FUNC1(ring, FUNC2(ring->next_rptr_gpu_addr));
		FUNC1(ring, 1); /* number of DWs to follow */
		FUNC1(ring, next_rptr);
	}

	/* IB packet must end on a 8 DW boundary */
	while ((ring->wptr & 7) != 4)
		FUNC1(ring, FUNC0(SDMA_OPCODE_NOP, 0, 0));
	FUNC1(ring, FUNC0(SDMA_OPCODE_INDIRECT_BUFFER, 0, extra_bits));
	FUNC1(ring, ib->gpu_addr & 0xffffffe0); /* base must be 32 byte aligned */
	FUNC1(ring, FUNC2(ib->gpu_addr));
	FUNC1(ring, ib->length_dw);

}