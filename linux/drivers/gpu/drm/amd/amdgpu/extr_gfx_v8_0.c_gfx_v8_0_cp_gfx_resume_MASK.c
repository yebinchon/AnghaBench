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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_6__ {int ready; } ;
struct amdgpu_ring {int ring_size; int wptr; int rptr_offs; int wptr_offs; int gpu_addr; TYPE_3__ sched; } ;
struct TYPE_5__ {int gpu_addr; } ;
struct TYPE_4__ {struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_2__ wb; TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_SWAP ; 
 int /*<<< orphan*/  CP_RB0_CNTL ; 
 int CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK ; 
 int /*<<< orphan*/  MIN_IB_AVAILSZ ; 
 int /*<<< orphan*/  MTYPE ; 
 int /*<<< orphan*/  RB_BLKSZ ; 
 int /*<<< orphan*/  RB_BUFSZ ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct amdgpu_ring*) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  mmCP_RB0_BASE ; 
 int /*<<< orphan*/  mmCP_RB0_BASE_HI ; 
 int /*<<< orphan*/  mmCP_RB0_CNTL ; 
 int /*<<< orphan*/  mmCP_RB0_RPTR_ADDR ; 
 int /*<<< orphan*/  mmCP_RB0_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_RB0_WPTR ; 
 int /*<<< orphan*/  mmCP_RB_VMID ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_DELAY ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_POLL_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_POLL_ADDR_LO ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	u32 tmp;
	u32 rb_bufsz;
	u64 rb_addr, rptr_addr, wptr_gpu_addr;

	/* Set the write pointer delay */
	FUNC1(mmCP_RB_WPTR_DELAY, 0);

	/* set the RB to use vmid 0 */
	FUNC1(mmCP_RB_VMID, 0);

	/* Set ring buffer size */
	ring = &adev->gfx.gfx_ring[0];
	rb_bufsz = FUNC7(ring->ring_size / 8);
	tmp = FUNC0(0, CP_RB0_CNTL, RB_BUFSZ, rb_bufsz);
	tmp = FUNC0(tmp, CP_RB0_CNTL, RB_BLKSZ, rb_bufsz - 2);
	tmp = FUNC0(tmp, CP_RB0_CNTL, MTYPE, 3);
	tmp = FUNC0(tmp, CP_RB0_CNTL, MIN_IB_AVAILSZ, 1);
#ifdef __BIG_ENDIAN
	tmp = REG_SET_FIELD(tmp, CP_RB0_CNTL, BUF_SWAP, 1);
#endif
	FUNC1(mmCP_RB0_CNTL, tmp);

	/* Initialize the ring buffer's read and write pointers */
	FUNC1(mmCP_RB0_CNTL, tmp | CP_RB0_CNTL__RB_RPTR_WR_ENA_MASK);
	ring->wptr = 0;
	FUNC1(mmCP_RB0_WPTR, FUNC5(ring->wptr));

	/* set the wb address wether it's enabled or not */
	rptr_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
	FUNC1(mmCP_RB0_RPTR_ADDR, FUNC5(rptr_addr));
	FUNC1(mmCP_RB0_RPTR_ADDR_HI, FUNC8(rptr_addr) & 0xFF);

	wptr_gpu_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);
	FUNC1(mmCP_RB_WPTR_POLL_ADDR_LO, FUNC5(wptr_gpu_addr));
	FUNC1(mmCP_RB_WPTR_POLL_ADDR_HI, FUNC8(wptr_gpu_addr));
	FUNC6(1);
	FUNC1(mmCP_RB0_CNTL, tmp);

	rb_addr = ring->gpu_addr >> 8;
	FUNC1(mmCP_RB0_BASE, rb_addr);
	FUNC1(mmCP_RB0_BASE_HI, FUNC8(rb_addr));

	FUNC4(adev, ring);
	/* start the ring */
	FUNC2(ring);
	FUNC3(adev);
	ring->sched.ready = true;

	return 0;
}