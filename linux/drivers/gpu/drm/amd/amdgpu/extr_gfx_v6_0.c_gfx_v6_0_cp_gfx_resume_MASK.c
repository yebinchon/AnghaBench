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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct amdgpu_ring {int ring_size; int wptr; int rptr_offs; int gpu_addr; } ;
struct TYPE_4__ {scalar_t__ gpu_addr; } ;
struct TYPE_3__ {struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_2__ wb; TYPE_1__ gfx; } ;

/* Variables and functions */
 int AMDGPU_GPU_PAGE_SIZE ; 
 int BUF_SWAP_32BIT ; 
 int CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mmCP_DEBUG ; 
 int /*<<< orphan*/  mmCP_RB0_BASE ; 
 int /*<<< orphan*/  mmCP_RB0_CNTL ; 
 int /*<<< orphan*/  mmCP_RB0_RPTR_ADDR ; 
 int /*<<< orphan*/  mmCP_RB0_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_RB0_WPTR ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_DELAY ; 
 int /*<<< orphan*/  mmCP_SEM_INCOMPLETE_TIMER_CNTL ; 
 int /*<<< orphan*/  mmCP_SEM_WAIT_TIMER ; 
 int /*<<< orphan*/  mmSCRATCH_ADDR ; 
 int /*<<< orphan*/  mmSCRATCH_UMSK ; 
 int FUNC5 (int) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	u32 tmp;
	u32 rb_bufsz;
	int r;
	u64 rptr_addr;

	FUNC0(mmCP_SEM_WAIT_TIMER, 0x0);
	FUNC0(mmCP_SEM_INCOMPLETE_TIMER_CNTL, 0x0);

	/* Set the write pointer delay */
	FUNC0(mmCP_RB_WPTR_DELAY, 0);

	FUNC0(mmCP_DEBUG, 0);
	FUNC0(mmSCRATCH_ADDR, 0);

	/* ring 0 - compute and gfx */
	/* Set ring buffer size */
	ring = &adev->gfx.gfx_ring[0];
	rb_bufsz = FUNC5(ring->ring_size / 8);
	tmp = (FUNC5(AMDGPU_GPU_PAGE_SIZE/8) << 8) | rb_bufsz;

#ifdef __BIG_ENDIAN
	tmp |= BUF_SWAP_32BIT;
#endif
	FUNC0(mmCP_RB0_CNTL, tmp);

	/* Initialize the ring buffer's read and write pointers */
	FUNC0(mmCP_RB0_CNTL, tmp | CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK);
	ring->wptr = 0;
	FUNC0(mmCP_RB0_WPTR, ring->wptr);

	/* set the wb address whether it's enabled or not */
	rptr_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
	FUNC0(mmCP_RB0_RPTR_ADDR, FUNC3(rptr_addr));
	FUNC0(mmCP_RB0_RPTR_ADDR_HI, FUNC6(rptr_addr) & 0xFF);

	FUNC0(mmSCRATCH_UMSK, 0);

	FUNC4(1);
	FUNC0(mmCP_RB0_CNTL, tmp);

	FUNC0(mmCP_RB0_BASE, ring->gpu_addr >> 8);

	/* start the rings */
	FUNC2(adev);
	r = FUNC1(ring);
	if (r)
		return r;

	return 0;
}