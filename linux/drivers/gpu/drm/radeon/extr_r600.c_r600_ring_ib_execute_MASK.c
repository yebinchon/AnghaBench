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
typedef  int u32 ;
struct radeon_ring {int rptr_save_reg; int wptr; int next_rptr_gpu_addr; } ;
struct radeon_ib {size_t ring; int gpu_addr; int length_dw; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; struct radeon_ring* ring; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_MEM_WRITE ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,int) ; 
 int FUNC2 (int) ; 

void FUNC3(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];
	u32 next_rptr;

	if (ring->rptr_save_reg) {
		next_rptr = ring->wptr + 3 + 4;
		FUNC1(ring, FUNC0(PACKET3_SET_CONFIG_REG, 1));
		FUNC1(ring, ((ring->rptr_save_reg -
					 PACKET3_SET_CONFIG_REG_OFFSET) >> 2));
		FUNC1(ring, next_rptr);
	} else if (rdev->wb.enabled) {
		next_rptr = ring->wptr + 5 + 4;
		FUNC1(ring, FUNC0(PACKET3_MEM_WRITE, 3));
		FUNC1(ring, ring->next_rptr_gpu_addr & 0xfffffffc);
		FUNC1(ring, (FUNC2(ring->next_rptr_gpu_addr) & 0xff) | (1 << 18));
		FUNC1(ring, next_rptr);
		FUNC1(ring, 0);
	}

	FUNC1(ring, FUNC0(PACKET3_INDIRECT_BUFFER, 2));
	FUNC1(ring,
#ifdef __BIG_ENDIAN
			  (2 << 0) |
#endif
			  (ib->gpu_addr & 0xFFFFFFFC));
	FUNC1(ring, FUNC2(ib->gpu_addr) & 0xFF);
	FUNC1(ring, ib->length_dw);
}