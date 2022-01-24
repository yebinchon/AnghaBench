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
struct radeon_device {TYPE_4__ mc; TYPE_3__* asic; struct radeon_ring* ring; TYPE_1__ wb; } ;
struct TYPE_6__ {size_t copy_ring_index; } ;
struct TYPE_7__ {TYPE_2__ copy; } ;

/* Variables and functions */
 int BUF_SWAP_32BIT ; 
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 int /*<<< orphan*/  CP_DEBUG ; 
 int /*<<< orphan*/  CP_RB0_BASE ; 
 int /*<<< orphan*/  CP_RB0_CNTL ; 
 int /*<<< orphan*/  CP_RB0_RPTR_ADDR ; 
 int /*<<< orphan*/  CP_RB0_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  CP_RB0_WPTR ; 
 int /*<<< orphan*/  CP_RB1_BASE ; 
 int /*<<< orphan*/  CP_RB1_CNTL ; 
 int /*<<< orphan*/  CP_RB1_RPTR_ADDR ; 
 int /*<<< orphan*/  CP_RB1_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  CP_RB1_WPTR ; 
 int /*<<< orphan*/  CP_RB2_BASE ; 
 int /*<<< orphan*/  CP_RB2_CNTL ; 
 int /*<<< orphan*/  CP_RB2_RPTR_ADDR ; 
 int /*<<< orphan*/  CP_RB2_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  CP_RB2_WPTR ; 
 int /*<<< orphan*/  CP_RB_WPTR_DELAY ; 
 int /*<<< orphan*/  CP_SEM_INCOMPLETE_TIMER_CNTL ; 
 int /*<<< orphan*/  CP_SEM_WAIT_TIMER ; 
 int RADEON_GPU_PAGE_SIZE ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int RADEON_WB_CP1_RPTR_OFFSET ; 
 int RADEON_WB_CP2_RPTR_OFFSET ; 
 int RADEON_WB_CP_RPTR_OFFSET ; 
 int RADEON_WB_SCRATCH_OFFSET ; 
 int RB_NO_UPDATE ; 
 int RB_RPTR_WR_ENA ; 
 int /*<<< orphan*/  SCRATCH_ADDR ; 
 int /*<<< orphan*/  SCRATCH_UMSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct radeon_device*,size_t,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	u32 tmp;
	u32 rb_bufsz;
	int r;

	FUNC6(rdev, false);

	FUNC0(CP_SEM_WAIT_TIMER, 0x0);
	FUNC0(CP_SEM_INCOMPLETE_TIMER_CNTL, 0x0);

	/* Set the write pointer delay */
	FUNC0(CP_RB_WPTR_DELAY, 0);

	FUNC0(CP_DEBUG, 0);
	FUNC0(SCRATCH_ADDR, ((rdev->wb.gpu_addr + RADEON_WB_SCRATCH_OFFSET) >> 8) & 0xFFFFFFFF);

	/* ring 0 - compute and gfx */
	/* Set ring buffer size */
	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	rb_bufsz = FUNC2(ring->ring_size / 8);
	tmp = (FUNC2(RADEON_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;
#ifdef __BIG_ENDIAN
	tmp |= BUF_SWAP_32BIT;
#endif
	FUNC0(CP_RB0_CNTL, tmp);

	/* Initialize the ring buffer's read and write pointers */
	FUNC0(CP_RB0_CNTL, tmp | RB_RPTR_WR_ENA);
	ring->wptr = 0;
	FUNC0(CP_RB0_WPTR, ring->wptr);

	/* set the wb address whether it's enabled or not */
	FUNC0(CP_RB0_RPTR_ADDR, (rdev->wb.gpu_addr + RADEON_WB_CP_RPTR_OFFSET) & 0xFFFFFFFC);
	FUNC0(CP_RB0_RPTR_ADDR_HI, FUNC7(rdev->wb.gpu_addr + RADEON_WB_CP_RPTR_OFFSET) & 0xFF);

	if (rdev->wb.enabled)
		FUNC0(SCRATCH_UMSK, 0xff);
	else {
		tmp |= RB_NO_UPDATE;
		FUNC0(SCRATCH_UMSK, 0);
	}

	FUNC1(1);
	FUNC0(CP_RB0_CNTL, tmp);

	FUNC0(CP_RB0_BASE, ring->gpu_addr >> 8);

	/* ring1  - compute only */
	/* Set ring buffer size */
	ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
	rb_bufsz = FUNC2(ring->ring_size / 8);
	tmp = (FUNC2(RADEON_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;
#ifdef __BIG_ENDIAN
	tmp |= BUF_SWAP_32BIT;
#endif
	FUNC0(CP_RB1_CNTL, tmp);

	/* Initialize the ring buffer's read and write pointers */
	FUNC0(CP_RB1_CNTL, tmp | RB_RPTR_WR_ENA);
	ring->wptr = 0;
	FUNC0(CP_RB1_WPTR, ring->wptr);

	/* set the wb address whether it's enabled or not */
	FUNC0(CP_RB1_RPTR_ADDR, (rdev->wb.gpu_addr + RADEON_WB_CP1_RPTR_OFFSET) & 0xFFFFFFFC);
	FUNC0(CP_RB1_RPTR_ADDR_HI, FUNC7(rdev->wb.gpu_addr + RADEON_WB_CP1_RPTR_OFFSET) & 0xFF);

	FUNC1(1);
	FUNC0(CP_RB1_CNTL, tmp);

	FUNC0(CP_RB1_BASE, ring->gpu_addr >> 8);

	/* ring2 - compute only */
	/* Set ring buffer size */
	ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
	rb_bufsz = FUNC2(ring->ring_size / 8);
	tmp = (FUNC2(RADEON_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;
#ifdef __BIG_ENDIAN
	tmp |= BUF_SWAP_32BIT;
#endif
	FUNC0(CP_RB2_CNTL, tmp);

	/* Initialize the ring buffer's read and write pointers */
	FUNC0(CP_RB2_CNTL, tmp | RB_RPTR_WR_ENA);
	ring->wptr = 0;
	FUNC0(CP_RB2_WPTR, ring->wptr);

	/* set the wb address whether it's enabled or not */
	FUNC0(CP_RB2_RPTR_ADDR, (rdev->wb.gpu_addr + RADEON_WB_CP2_RPTR_OFFSET) & 0xFFFFFFFC);
	FUNC0(CP_RB2_RPTR_ADDR_HI, FUNC7(rdev->wb.gpu_addr + RADEON_WB_CP2_RPTR_OFFSET) & 0xFF);

	FUNC1(1);
	FUNC0(CP_RB2_CNTL, tmp);

	FUNC0(CP_RB2_BASE, ring->gpu_addr >> 8);

	/* start the rings */
	FUNC5(rdev);
	rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ready = true;
	rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX].ready = true;
	rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX].ready = true;
	r = FUNC3(rdev, RADEON_RING_TYPE_GFX_INDEX, &rdev->ring[RADEON_RING_TYPE_GFX_INDEX]);
	if (r) {
		rdev->ring[RADEON_RING_TYPE_GFX_INDEX].ready = false;
		rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX].ready = false;
		rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX].ready = false;
		return r;
	}
	r = FUNC3(rdev, CAYMAN_RING_TYPE_CP1_INDEX, &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX]);
	if (r) {
		rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX].ready = false;
	}
	r = FUNC3(rdev, CAYMAN_RING_TYPE_CP2_INDEX, &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX]);
	if (r) {
		rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX].ready = false;
	}

	FUNC6(rdev, true);

	if (rdev->asic->copy.copy_ring_index == RADEON_RING_TYPE_GFX_INDEX)
		FUNC4(rdev, rdev->mc.real_vram_size);

	return 0;
}