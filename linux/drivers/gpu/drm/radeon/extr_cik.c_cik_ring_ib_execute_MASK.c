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
typedef  unsigned int u32 ;
struct radeon_ring {int rptr_save_reg; int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; unsigned int length_dw; int gpu_addr; scalar_t__ is_const_ib; TYPE_2__* vm; } ;
struct TYPE_6__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_3__ wb; struct radeon_ring* ring; } ;
struct TYPE_5__ {TYPE_1__* ids; } ;
struct TYPE_4__ {unsigned int id; } ;

/* Variables and functions */
 unsigned int INDIRECT_BUFFER_VALID ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER_CONST ; 
 int /*<<< orphan*/  PACKET3_SET_UCONFIG_REG ; 
 int PACKET3_SET_UCONFIG_REG_START ; 
 int /*<<< orphan*/  PACKET3_SWITCH_BUFFER ; 
 int /*<<< orphan*/  PACKET3_WRITE_DATA ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_ring*,unsigned int) ; 
 int FUNC3 (int) ; 

void FUNC4(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];
	unsigned vm_id = ib->vm ? ib->vm->ids[ib->ring].id : 0;
	u32 header, control = INDIRECT_BUFFER_VALID;

	if (ib->is_const_ib) {
		/* set switch buffer packet before const IB */
		FUNC2(ring, FUNC0(PACKET3_SWITCH_BUFFER, 0));
		FUNC2(ring, 0);

		header = FUNC0(PACKET3_INDIRECT_BUFFER_CONST, 2);
	} else {
		u32 next_rptr;
		if (ring->rptr_save_reg) {
			next_rptr = ring->wptr + 3 + 4;
			FUNC2(ring, FUNC0(PACKET3_SET_UCONFIG_REG, 1));
			FUNC2(ring, ((ring->rptr_save_reg -
						  PACKET3_SET_UCONFIG_REG_START) >> 2));
			FUNC2(ring, next_rptr);
		} else if (rdev->wb.enabled) {
			next_rptr = ring->wptr + 5 + 4;
			FUNC2(ring, FUNC0(PACKET3_WRITE_DATA, 3));
			FUNC2(ring, FUNC1(1));
			FUNC2(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
			FUNC2(ring, FUNC3(ring->next_rptr_gpu_addr));
			FUNC2(ring, next_rptr);
		}

		header = FUNC0(PACKET3_INDIRECT_BUFFER, 2);
	}

	control |= ib->length_dw | (vm_id << 24);

	FUNC2(ring, header);
	FUNC2(ring, (ib->gpu_addr & 0xFFFFFFFC));
	FUNC2(ring, FUNC3(ib->gpu_addr) & 0xFFFF);
	FUNC2(ring, control);
}