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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct TYPE_3__ {scalar_t__ use_event; } ;
struct radeon_device {scalar_t__ family; TYPE_2__* fence_drv; TYPE_1__ wb; struct radeon_ring* ring; } ;
struct TYPE_4__ {int scratch_reg; int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_FLUSH_AND_INV_EVENT ; 
 int /*<<< orphan*/  CACHE_FLUSH_AND_INV_EVENT_TS ; 
 scalar_t__ CHIP_RV770 ; 
 int /*<<< orphan*/  CP_INT_STATUS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_EVENT_WRITE ; 
 int /*<<< orphan*/  PACKET3_EVENT_WRITE_EOP ; 
 int PACKET3_FULL_CACHE_ENA ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_OFFSET ; 
 int PACKET3_SH_ACTION_ENA ; 
 int /*<<< orphan*/  PACKET3_SURFACE_SYNC ; 
 int PACKET3_TC_ACTION_ENA ; 
 int PACKET3_VC_ACTION_ENA ; 
 int RB_INT_STAT ; 
 int WAIT_3D_IDLECLEAN_bit ; 
 int WAIT_3D_IDLE_bit ; 
 int WAIT_UNTIL ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_ring*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct radeon_device *rdev,
			  struct radeon_fence *fence)
{
	struct radeon_ring *ring = &rdev->ring[fence->ring];
	u32 cp_coher_cntl = PACKET3_TC_ACTION_ENA | PACKET3_VC_ACTION_ENA |
		PACKET3_SH_ACTION_ENA;

	if (rdev->family >= CHIP_RV770)
		cp_coher_cntl |= PACKET3_FULL_CACHE_ENA;

	if (rdev->wb.use_event) {
		u64 addr = rdev->fence_drv[fence->ring].gpu_addr;
		/* flush read cache over gart */
		FUNC7(ring, FUNC5(PACKET3_SURFACE_SYNC, 3));
		FUNC7(ring, cp_coher_cntl);
		FUNC7(ring, 0xFFFFFFFF);
		FUNC7(ring, 0);
		FUNC7(ring, 10); /* poll interval */
		/* EVENT_WRITE_EOP - flush caches, send int */
		FUNC7(ring, FUNC5(PACKET3_EVENT_WRITE_EOP, 4));
		FUNC7(ring, FUNC2(CACHE_FLUSH_AND_INV_EVENT_TS) | FUNC1(5));
		FUNC7(ring, FUNC6(addr));
		FUNC7(ring, (FUNC8(addr) & 0xff) | FUNC0(1) | FUNC3(2));
		FUNC7(ring, fence->seq);
		FUNC7(ring, 0);
	} else {
		/* flush read cache over gart */
		FUNC7(ring, FUNC5(PACKET3_SURFACE_SYNC, 3));
		FUNC7(ring, cp_coher_cntl);
		FUNC7(ring, 0xFFFFFFFF);
		FUNC7(ring, 0);
		FUNC7(ring, 10); /* poll interval */
		FUNC7(ring, FUNC5(PACKET3_EVENT_WRITE, 0));
		FUNC7(ring, FUNC2(CACHE_FLUSH_AND_INV_EVENT) | FUNC1(0));
		/* wait for 3D idle clean */
		FUNC7(ring, FUNC5(PACKET3_SET_CONFIG_REG, 1));
		FUNC7(ring, (WAIT_UNTIL - PACKET3_SET_CONFIG_REG_OFFSET) >> 2);
		FUNC7(ring, WAIT_3D_IDLE_bit | WAIT_3D_IDLECLEAN_bit);
		/* Emit fence sequence & fire IRQ */
		FUNC7(ring, FUNC5(PACKET3_SET_CONFIG_REG, 1));
		FUNC7(ring, ((rdev->fence_drv[fence->ring].scratch_reg - PACKET3_SET_CONFIG_REG_OFFSET) >> 2));
		FUNC7(ring, fence->seq);
		/* CP_INTERRUPT packet 3 no longer exists, use packet 0 */
		FUNC7(ring, FUNC4(CP_INT_STATUS, 0));
		FUNC7(ring, RB_INT_STAT);
	}
}