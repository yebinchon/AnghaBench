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
struct radeon_ring {int dummy; } ;
struct radeon_fence {size_t ring; int seq; } ;
struct radeon_device {TYPE_1__* fence_drv; struct radeon_ring* ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  scratch_reg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADEON_GEN_INT_STATUS ; 
 int RADEON_RB3D_DC_FLUSH_ALL ; 
 int /*<<< orphan*/  RADEON_RB3D_DSTCACHE_CTLSTAT ; 
 int /*<<< orphan*/  RADEON_RB3D_ZCACHE_CTLSTAT ; 
 int RADEON_RB3D_ZC_FLUSH_ALL ; 
 int RADEON_SW_INT_FIRE ; 
 int RADEON_WAIT_2D_IDLECLEAN ; 
 int RADEON_WAIT_3D_IDLECLEAN ; 
 int /*<<< orphan*/  RADEON_WAIT_UNTIL ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_ring*,int) ; 

void FUNC3(struct radeon_device *rdev,
			  struct radeon_fence *fence)
{
	struct radeon_ring *ring = &rdev->ring[fence->ring];

	/* We have to make sure that caches are flushed before
	 * CPU might read something from VRAM. */
	FUNC2(ring, FUNC0(RADEON_RB3D_DSTCACHE_CTLSTAT, 0));
	FUNC2(ring, RADEON_RB3D_DC_FLUSH_ALL);
	FUNC2(ring, FUNC0(RADEON_RB3D_ZCACHE_CTLSTAT, 0));
	FUNC2(ring, RADEON_RB3D_ZC_FLUSH_ALL);
	/* Wait until IDLE & CLEAN */
	FUNC2(ring, FUNC0(RADEON_WAIT_UNTIL, 0));
	FUNC2(ring, RADEON_WAIT_2D_IDLECLEAN | RADEON_WAIT_3D_IDLECLEAN);
	FUNC1(rdev, ring);
	/* Emit fence sequence & fire IRQ */
	FUNC2(ring, FUNC0(rdev->fence_drv[fence->ring].scratch_reg, 0));
	FUNC2(ring, fence->seq);
	FUNC2(ring, FUNC0(RADEON_GEN_INT_STATUS, 0));
	FUNC2(ring, RADEON_SW_INT_FIRE);
}