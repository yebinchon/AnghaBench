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
typedef  unsigned int uint32_t ;
typedef  unsigned int u32 ;
struct radeon_ring {int rptr_save_reg; unsigned int wptr; } ;
struct radeon_ib {size_t ring; int gpu_addr; unsigned int length_dw; TYPE_2__* vm; } ;
struct radeon_device {struct radeon_ring* ring; } ;
struct TYPE_4__ {TYPE_1__* ids; } ;
struct TYPE_3__ {unsigned int id; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned int PACKET3_ENGINE_ME ; 
 unsigned int PACKET3_FULL_CACHE_ENA ; 
 int /*<<< orphan*/  PACKET3_INDIRECT_BUFFER ; 
 int /*<<< orphan*/  PACKET3_MODE_CONTROL ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_START ; 
 unsigned int PACKET3_SH_ACTION_ENA ; 
 int /*<<< orphan*/  PACKET3_SURFACE_SYNC ; 
 unsigned int PACKET3_TC_ACTION_ENA ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_ring*,unsigned int) ; 
 int FUNC2 (int) ; 

void FUNC3(struct radeon_device *rdev, struct radeon_ib *ib)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];
	unsigned vm_id = ib->vm ? ib->vm->ids[ib->ring].id : 0;
	u32 cp_coher_cntl = PACKET3_FULL_CACHE_ENA | PACKET3_TC_ACTION_ENA |
		PACKET3_SH_ACTION_ENA;

	/* set to DX10/11 mode */
	FUNC1(ring, FUNC0(PACKET3_MODE_CONTROL, 0));
	FUNC1(ring, 1);

	if (ring->rptr_save_reg) {
		uint32_t next_rptr = ring->wptr + 3 + 4 + 8;
		FUNC1(ring, FUNC0(PACKET3_SET_CONFIG_REG, 1));
		FUNC1(ring, ((ring->rptr_save_reg - 
					  PACKET3_SET_CONFIG_REG_START) >> 2));
		FUNC1(ring, next_rptr);
	}

	FUNC1(ring, FUNC0(PACKET3_INDIRECT_BUFFER, 2));
	FUNC1(ring,
#ifdef __BIG_ENDIAN
			  (2 << 0) |
#endif
			  (ib->gpu_addr & 0xFFFFFFFC));
	FUNC1(ring, FUNC2(ib->gpu_addr) & 0xFF);
	FUNC1(ring, ib->length_dw | (vm_id << 24));

	/* flush read cache over gart for this vmid */
	FUNC1(ring, FUNC0(PACKET3_SURFACE_SYNC, 3));
	FUNC1(ring, PACKET3_ENGINE_ME | cp_coher_cntl);
	FUNC1(ring, 0xFFFFFFFF);
	FUNC1(ring, 0);
	FUNC1(ring, (vm_id << 24) | 10); /* poll interval */
}