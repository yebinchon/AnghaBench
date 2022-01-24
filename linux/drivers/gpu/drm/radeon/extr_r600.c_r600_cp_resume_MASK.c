#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct radeon_ring {int ring_size; int wptr; int gpu_addr; int ready; } ;
struct TYPE_8__ {int /*<<< orphan*/  real_vram_size; } ;
struct TYPE_5__ {int gpu_addr; scalar_t__ enabled; } ;
struct radeon_device {TYPE_4__ mc; TYPE_3__* asic; TYPE_1__ wb; struct radeon_ring* ring; } ;
struct TYPE_6__ {size_t copy_ring_index; } ;
struct TYPE_7__ {TYPE_2__ copy; } ;

/* Variables and functions */
 int BUF_SWAP_32BIT ; 
 int /*<<< orphan*/  CP_DEBUG ; 
 int /*<<< orphan*/  CP_RB_BASE ; 
 int /*<<< orphan*/  CP_RB_CNTL ; 
 int /*<<< orphan*/  CP_RB_RPTR_ADDR ; 
 int /*<<< orphan*/  CP_RB_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  CP_RB_RPTR_WR ; 
 int /*<<< orphan*/  CP_RB_WPTR ; 
 int /*<<< orphan*/  CP_RB_WPTR_DELAY ; 
 int /*<<< orphan*/  CP_SEM_WAIT_TIMER ; 
 int /*<<< orphan*/  GRBM_SOFT_RESET ; 
 int RADEON_GPU_PAGE_SIZE ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int RADEON_WB_CP_RPTR_OFFSET ; 
 int RADEON_WB_SCRATCH_OFFSET ; 
 int RB_NO_UPDATE ; 
 int RB_RPTR_WR_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRATCH_ADDR ; 
 int /*<<< orphan*/  SCRATCH_UMSK ; 
 int SOFT_RESET_CP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*,size_t,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 

int FUNC8(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	u32 tmp;
	u32 rb_bufsz;
	int r;

	/* Reset cp */
	FUNC1(GRBM_SOFT_RESET, SOFT_RESET_CP);
	FUNC0(GRBM_SOFT_RESET);
	FUNC2(15);
	FUNC1(GRBM_SOFT_RESET, 0);

	/* Set ring buffer size */
	rb_bufsz = FUNC3(ring->ring_size / 8);
	tmp = (FUNC3(RADEON_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;
#ifdef __BIG_ENDIAN
	tmp |= BUF_SWAP_32BIT;
#endif
	FUNC1(CP_RB_CNTL, tmp);
	FUNC1(CP_SEM_WAIT_TIMER, 0x0);

	/* Set the write pointer delay */
	FUNC1(CP_RB_WPTR_DELAY, 0);

	/* Initialize the ring buffer's read and write pointers */
	FUNC1(CP_RB_CNTL, tmp | RB_RPTR_WR_ENA);
	FUNC1(CP_RB_RPTR_WR, 0);
	ring->wptr = 0;
	FUNC1(CP_RB_WPTR, ring->wptr);

	/* set the wb address whether it's enabled or not */
	FUNC1(CP_RB_RPTR_ADDR,
	       ((rdev->wb.gpu_addr + RADEON_WB_CP_RPTR_OFFSET) & 0xFFFFFFFC));
	FUNC1(CP_RB_RPTR_ADDR_HI, FUNC7(rdev->wb.gpu_addr + RADEON_WB_CP_RPTR_OFFSET) & 0xFF);
	FUNC1(SCRATCH_ADDR, ((rdev->wb.gpu_addr + RADEON_WB_SCRATCH_OFFSET) >> 8) & 0xFFFFFFFF);

	if (rdev->wb.enabled)
		FUNC1(SCRATCH_UMSK, 0xff);
	else {
		tmp |= RB_NO_UPDATE;
		FUNC1(SCRATCH_UMSK, 0);
	}

	FUNC2(1);
	FUNC1(CP_RB_CNTL, tmp);

	FUNC1(CP_RB_BASE, ring->gpu_addr >> 8);
	FUNC1(CP_DEBUG, (1 << 27) | (1 << 28));

	FUNC4(rdev);
	ring->ready = true;
	r = FUNC5(rdev, RADEON_RING_TYPE_GFX_INDEX, ring);
	if (r) {
		ring->ready = false;
		return r;
	}

	if (rdev->asic->copy.copy_ring_index == RADEON_RING_TYPE_GFX_INDEX)
		FUNC6(rdev, rdev->mc.real_vram_size);

	return 0;
}