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
struct amdgpu_ring {int ring_size; int wptr; int rptr_offs; int wptr_offs; int gpu_addr; int doorbell_index; TYPE_3__ sched; scalar_t__ use_doorbell; } ;
struct TYPE_5__ {int gpu_addr; } ;
struct TYPE_4__ {struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_2__ wb; TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_SWAP ; 
 int /*<<< orphan*/  CP_RB0_CNTL ; 
 int /*<<< orphan*/  CP_RB_DOORBELL_CONTROL ; 
 int /*<<< orphan*/  CP_RB_DOORBELL_RANGE_LOWER ; 
 int CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK ; 
 int CP_RB_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK ; 
 int /*<<< orphan*/  DOORBELL_EN ; 
 int /*<<< orphan*/  DOORBELL_OFFSET ; 
 int /*<<< orphan*/  DOORBELL_RANGE_LOWER ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  RB_BLKSZ ; 
 int /*<<< orphan*/  RB_BUFSZ ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  mmCP_RB0_BASE ; 
 int /*<<< orphan*/  mmCP_RB0_BASE_HI ; 
 int /*<<< orphan*/  mmCP_RB0_CNTL ; 
 int /*<<< orphan*/  mmCP_RB0_RPTR_ADDR ; 
 int /*<<< orphan*/  mmCP_RB0_RPTR_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_RB0_WPTR ; 
 int /*<<< orphan*/  mmCP_RB0_WPTR_HI ; 
 int /*<<< orphan*/  mmCP_RB_DOORBELL_CONTROL ; 
 int /*<<< orphan*/  mmCP_RB_DOORBELL_RANGE_LOWER ; 
 int /*<<< orphan*/  mmCP_RB_DOORBELL_RANGE_UPPER ; 
 int /*<<< orphan*/  mmCP_RB_VMID ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_DELAY ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_POLL_ADDR_HI ; 
 int /*<<< orphan*/  mmCP_RB_WPTR_POLL_ADDR_LO ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	u32 tmp;
	u32 rb_bufsz;
	u64 rb_addr, rptr_addr, wptr_gpu_addr;

	/* Set the write pointer delay */
	FUNC2(GC, 0, mmCP_RB_WPTR_DELAY, 0);

	/* set the RB to use vmid 0 */
	FUNC2(GC, 0, mmCP_RB_VMID, 0);

	/* Set ring buffer size */
	ring = &adev->gfx.gfx_ring[0];
	rb_bufsz = FUNC6(ring->ring_size / 8);
	tmp = FUNC0(0, CP_RB0_CNTL, RB_BUFSZ, rb_bufsz);
	tmp = FUNC0(tmp, CP_RB0_CNTL, RB_BLKSZ, rb_bufsz - 2);
#ifdef __BIG_ENDIAN
	tmp = REG_SET_FIELD(tmp, CP_RB0_CNTL, BUF_SWAP, 1);
#endif
	FUNC2(GC, 0, mmCP_RB0_CNTL, tmp);

	/* Initialize the ring buffer's write pointers */
	ring->wptr = 0;
	FUNC2(GC, 0, mmCP_RB0_WPTR, FUNC4(ring->wptr));
	FUNC2(GC, 0, mmCP_RB0_WPTR_HI, FUNC7(ring->wptr));

	/* set the wb address wether it's enabled or not */
	rptr_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
	FUNC2(GC, 0, mmCP_RB0_RPTR_ADDR, FUNC4(rptr_addr));
	FUNC2(GC, 0, mmCP_RB0_RPTR_ADDR_HI, FUNC7(rptr_addr) & CP_RB_RPTR_ADDR_HI__RB_RPTR_ADDR_HI_MASK);

	wptr_gpu_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);
	FUNC2(GC, 0, mmCP_RB_WPTR_POLL_ADDR_LO, FUNC4(wptr_gpu_addr));
	FUNC2(GC, 0, mmCP_RB_WPTR_POLL_ADDR_HI, FUNC7(wptr_gpu_addr));

	FUNC5(1);
	FUNC2(GC, 0, mmCP_RB0_CNTL, tmp);

	rb_addr = ring->gpu_addr >> 8;
	FUNC2(GC, 0, mmCP_RB0_BASE, rb_addr);
	FUNC2(GC, 0, mmCP_RB0_BASE_HI, FUNC7(rb_addr));

	tmp = FUNC1(GC, 0, mmCP_RB_DOORBELL_CONTROL);
	if (ring->use_doorbell) {
		tmp = FUNC0(tmp, CP_RB_DOORBELL_CONTROL,
				    DOORBELL_OFFSET, ring->doorbell_index);
		tmp = FUNC0(tmp, CP_RB_DOORBELL_CONTROL,
				    DOORBELL_EN, 1);
	} else {
		tmp = FUNC0(tmp, CP_RB_DOORBELL_CONTROL, DOORBELL_EN, 0);
	}
	FUNC2(GC, 0, mmCP_RB_DOORBELL_CONTROL, tmp);

	tmp = FUNC0(0, CP_RB_DOORBELL_RANGE_LOWER,
			DOORBELL_RANGE_LOWER, ring->doorbell_index);
	FUNC2(GC, 0, mmCP_RB_DOORBELL_RANGE_LOWER, tmp);

	FUNC2(GC, 0, mmCP_RB_DOORBELL_RANGE_UPPER,
		       CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK);


	/* start the ring */
	FUNC3(adev);
	ring->sched.ready = true;

	return 0;
}