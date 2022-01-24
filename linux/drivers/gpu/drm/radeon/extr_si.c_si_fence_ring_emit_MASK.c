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
typedef  int /*<<< orphan*/  u64 ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpu_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_FLUSH_AND_INV_TS_EVENT ; 
 int CP_COHER_CNTL2 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_EVENT_WRITE_EOP ; 
 int /*<<< orphan*/  PACKET3_SET_CONFIG_REG ; 
 int PACKET3_SET_CONFIG_REG_START ; 
 int PACKET3_SH_ICACHE_ACTION_ENA ; 
 int PACKET3_SH_KCACHE_ACTION_ENA ; 
 int /*<<< orphan*/  PACKET3_SURFACE_SYNC ; 
 int PACKET3_TCL1_ACTION_ENA ; 
 int PACKET3_TC_ACTION_ENA ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_ring*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct radeon_device *rdev,
			struct radeon_fence *fence)
{
	struct radeon_ring *ring = &rdev->ring[fence->ring];
	u64 addr = rdev->fence_drv[fence->ring].gpu_addr;

	/* flush read cache over gart */
	FUNC6(ring, FUNC4(PACKET3_SET_CONFIG_REG, 1));
	FUNC6(ring, (CP_COHER_CNTL2 - PACKET3_SET_CONFIG_REG_START) >> 2);
	FUNC6(ring, 0);
	FUNC6(ring, FUNC4(PACKET3_SURFACE_SYNC, 3));
	FUNC6(ring, PACKET3_TCL1_ACTION_ENA |
			  PACKET3_TC_ACTION_ENA |
			  PACKET3_SH_KCACHE_ACTION_ENA |
			  PACKET3_SH_ICACHE_ACTION_ENA);
	FUNC6(ring, 0xFFFFFFFF);
	FUNC6(ring, 0);
	FUNC6(ring, 10); /* poll interval */
	/* EVENT_WRITE_EOP - flush caches, send int */
	FUNC6(ring, FUNC4(PACKET3_EVENT_WRITE_EOP, 4));
	FUNC6(ring, FUNC2(CACHE_FLUSH_AND_INV_TS_EVENT) | FUNC1(5));
	FUNC6(ring, FUNC5(addr));
	FUNC6(ring, (FUNC7(addr) & 0xff) | FUNC0(1) | FUNC3(2));
	FUNC6(ring, fence->seq);
	FUNC6(ring, 0);
}