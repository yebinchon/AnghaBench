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
typedef  int u64 ;
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int gpu_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_FLUSH_AND_INV_TS_EVENT ; 
 int FUNC0 (int) ; 
 int EOP_TCL1_ACTION_EN ; 
 int EOP_TC_ACTION_EN ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_EVENT_WRITE_EOP ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_ring*,int) ; 
 int FUNC6 (int) ; 

void FUNC7(struct radeon_device *rdev,
			     struct radeon_fence *fence)
{
	struct radeon_ring *ring = &rdev->ring[fence->ring];
	u64 addr = rdev->fence_drv[fence->ring].gpu_addr;

	/* Workaround for cache flush problems. First send a dummy EOP
	 * event down the pipe with seq one below.
	 */
	FUNC5(ring, FUNC4(PACKET3_EVENT_WRITE_EOP, 4));
	FUNC5(ring, (EOP_TCL1_ACTION_EN |
				 EOP_TC_ACTION_EN |
				 FUNC2(CACHE_FLUSH_AND_INV_TS_EVENT) |
				 FUNC1(5)));
	FUNC5(ring, addr & 0xfffffffc);
	FUNC5(ring, (FUNC6(addr) & 0xffff) |
				FUNC0(1) | FUNC3(0));
	FUNC5(ring, fence->seq - 1);
	FUNC5(ring, 0);

	/* Then send the real EOP event down the pipe. */
	FUNC5(ring, FUNC4(PACKET3_EVENT_WRITE_EOP, 4));
	FUNC5(ring, (EOP_TCL1_ACTION_EN |
				 EOP_TC_ACTION_EN |
				 FUNC2(CACHE_FLUSH_AND_INV_TS_EVENT) |
				 FUNC1(5)));
	FUNC5(ring, addr & 0xfffffffc);
	FUNC5(ring, (FUNC6(addr) & 0xffff) | FUNC0(1) | FUNC3(2));
	FUNC5(ring, fence->seq);
	FUNC5(ring, 0);
}