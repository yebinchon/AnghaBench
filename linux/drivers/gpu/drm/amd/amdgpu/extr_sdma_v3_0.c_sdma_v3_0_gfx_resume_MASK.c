#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_13__ {int ready; } ;
struct amdgpu_ring {int rptr_offs; int ring_size; int gpu_addr; int doorbell_index; int wptr_offs; TYPE_6__ sched; scalar_t__ use_pollmem; scalar_t__ use_doorbell; scalar_t__ wptr; } ;
struct TYPE_8__ {struct amdgpu_ring* buffer_funcs_ring; } ;
struct TYPE_14__ {int num_instances; TYPE_2__* instance; } ;
struct TYPE_12__ {scalar_t__ gpu_addr; } ;
struct TYPE_10__ {int gb_addr_config; } ;
struct TYPE_11__ {TYPE_3__ config; } ;
struct amdgpu_device {TYPE_1__ mman; TYPE_7__ sdma; TYPE_5__ wb; TYPE_4__ gfx; int /*<<< orphan*/  srbm_mutex; } ;
struct TYPE_9__ {struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENABLE ; 
 int /*<<< orphan*/  IB_ENABLE ; 
 int /*<<< orphan*/  IB_SWAP_ENABLE ; 
 int /*<<< orphan*/  OFFSET ; 
 int /*<<< orphan*/  RB_ENABLE ; 
 int /*<<< orphan*/  RB_SIZE ; 
 int /*<<< orphan*/  RB_SWAP_ENABLE ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPTR_WRITEBACK_ENABLE ; 
 int /*<<< orphan*/  RPTR_WRITEBACK_SWAP_ENABLE ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  SDMA0_GFX_DOORBELL ; 
 int /*<<< orphan*/  SDMA0_GFX_IB_CNTL ; 
 int /*<<< orphan*/  SDMA0_GFX_RB_CNTL ; 
 int /*<<< orphan*/  SDMA0_GFX_RB_WPTR_POLL_CNTL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*) ; 
 int FUNC4 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ mmSDMA0_GFX_APE1_CNTL ; 
 scalar_t__ mmSDMA0_GFX_DOORBELL ; 
 scalar_t__ mmSDMA0_GFX_IB_CNTL ; 
 scalar_t__ mmSDMA0_GFX_IB_OFFSET ; 
 scalar_t__ mmSDMA0_GFX_IB_RPTR ; 
 scalar_t__ mmSDMA0_GFX_RB_BASE ; 
 scalar_t__ mmSDMA0_GFX_RB_BASE_HI ; 
 scalar_t__ mmSDMA0_GFX_RB_CNTL ; 
 scalar_t__ mmSDMA0_GFX_RB_RPTR ; 
 scalar_t__ mmSDMA0_GFX_RB_RPTR_ADDR_HI ; 
 scalar_t__ mmSDMA0_GFX_RB_RPTR_ADDR_LO ; 
 scalar_t__ mmSDMA0_GFX_RB_WPTR ; 
 scalar_t__ mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI ; 
 scalar_t__ mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO ; 
 scalar_t__ mmSDMA0_GFX_RB_WPTR_POLL_CNTL ; 
 scalar_t__ mmSDMA0_GFX_VIRTUAL_ADDR ; 
 scalar_t__ mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL ; 
 scalar_t__ mmSDMA0_TILING_CONFIG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 scalar_t__* sdma_offsets ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct amdgpu_ring*) ; 
 int FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	u32 rb_cntl, ib_cntl, wptr_poll_cntl;
	u32 rb_bufsz;
	u32 wb_offset;
	u32 doorbell;
	u64 wptr_gpu_addr;
	int i, j, r;

	for (i = 0; i < adev->sdma.num_instances; i++) {
		ring = &adev->sdma.instance[i].ring;
		FUNC3(ring);
		wb_offset = (ring->rptr_offs * 4);

		FUNC7(&adev->srbm_mutex);
		for (j = 0; j < 16; j++) {
			FUNC14(adev, 0, 0, 0, j);
			/* SDMA GFX */
			FUNC2(mmSDMA0_GFX_VIRTUAL_ADDR + sdma_offsets[i], 0);
			FUNC2(mmSDMA0_GFX_APE1_CNTL + sdma_offsets[i], 0);
		}
		FUNC14(adev, 0, 0, 0, 0);
		FUNC8(&adev->srbm_mutex);

		FUNC2(mmSDMA0_TILING_CONFIG + sdma_offsets[i],
		       adev->gfx.config.gb_addr_config & 0x70);

		FUNC2(mmSDMA0_SEM_WAIT_FAIL_TIMER_CNTL + sdma_offsets[i], 0);

		/* Set ring buffer size in dwords */
		rb_bufsz = FUNC9(ring->ring_size / 4);
		rb_cntl = FUNC1(mmSDMA0_GFX_RB_CNTL + sdma_offsets[i]);
		rb_cntl = FUNC0(rb_cntl, SDMA0_GFX_RB_CNTL, RB_SIZE, rb_bufsz);
#ifdef __BIG_ENDIAN
		rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL, RB_SWAP_ENABLE, 1);
		rb_cntl = REG_SET_FIELD(rb_cntl, SDMA0_GFX_RB_CNTL,
					RPTR_WRITEBACK_SWAP_ENABLE, 1);
#endif
		FUNC2(mmSDMA0_GFX_RB_CNTL + sdma_offsets[i], rb_cntl);

		/* Initialize the ring buffer's read and write pointers */
		ring->wptr = 0;
		FUNC2(mmSDMA0_GFX_RB_RPTR + sdma_offsets[i], 0);
		FUNC12(ring);
		FUNC2(mmSDMA0_GFX_IB_RPTR + sdma_offsets[i], 0);
		FUNC2(mmSDMA0_GFX_IB_OFFSET + sdma_offsets[i], 0);

		/* set the wb address whether it's enabled or not */
		FUNC2(mmSDMA0_GFX_RB_RPTR_ADDR_HI + sdma_offsets[i],
		       FUNC13(adev->wb.gpu_addr + wb_offset) & 0xFFFFFFFF);
		FUNC2(mmSDMA0_GFX_RB_RPTR_ADDR_LO + sdma_offsets[i],
		       FUNC6(adev->wb.gpu_addr + wb_offset) & 0xFFFFFFFC);

		rb_cntl = FUNC0(rb_cntl, SDMA0_GFX_RB_CNTL, RPTR_WRITEBACK_ENABLE, 1);

		FUNC2(mmSDMA0_GFX_RB_BASE + sdma_offsets[i], ring->gpu_addr >> 8);
		FUNC2(mmSDMA0_GFX_RB_BASE_HI + sdma_offsets[i], ring->gpu_addr >> 40);

		doorbell = FUNC1(mmSDMA0_GFX_DOORBELL + sdma_offsets[i]);

		if (ring->use_doorbell) {
			doorbell = FUNC0(doorbell, SDMA0_GFX_DOORBELL,
						 OFFSET, ring->doorbell_index);
			doorbell = FUNC0(doorbell, SDMA0_GFX_DOORBELL, ENABLE, 1);
		} else {
			doorbell = FUNC0(doorbell, SDMA0_GFX_DOORBELL, ENABLE, 0);
		}
		FUNC2(mmSDMA0_GFX_DOORBELL + sdma_offsets[i], doorbell);

		/* setup the wptr shadow polling */
		wptr_gpu_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);

		FUNC2(mmSDMA0_GFX_RB_WPTR_POLL_ADDR_LO + sdma_offsets[i],
		       FUNC6(wptr_gpu_addr));
		FUNC2(mmSDMA0_GFX_RB_WPTR_POLL_ADDR_HI + sdma_offsets[i],
		       FUNC13(wptr_gpu_addr));
		wptr_poll_cntl = FUNC1(mmSDMA0_GFX_RB_WPTR_POLL_CNTL + sdma_offsets[i]);
		if (ring->use_pollmem) {
			/*wptr polling is not enogh fast, directly clean the wptr register */
			FUNC2(mmSDMA0_GFX_RB_WPTR + sdma_offsets[i], 0);
			wptr_poll_cntl = FUNC0(wptr_poll_cntl,
						       SDMA0_GFX_RB_WPTR_POLL_CNTL,
						       ENABLE, 1);
		} else {
			wptr_poll_cntl = FUNC0(wptr_poll_cntl,
						       SDMA0_GFX_RB_WPTR_POLL_CNTL,
						       ENABLE, 0);
		}
		FUNC2(mmSDMA0_GFX_RB_WPTR_POLL_CNTL + sdma_offsets[i], wptr_poll_cntl);

		/* enable DMA RB */
		rb_cntl = FUNC0(rb_cntl, SDMA0_GFX_RB_CNTL, RB_ENABLE, 1);
		FUNC2(mmSDMA0_GFX_RB_CNTL + sdma_offsets[i], rb_cntl);

		ib_cntl = FUNC1(mmSDMA0_GFX_IB_CNTL + sdma_offsets[i]);
		ib_cntl = FUNC0(ib_cntl, SDMA0_GFX_IB_CNTL, IB_ENABLE, 1);
#ifdef __BIG_ENDIAN
		ib_cntl = REG_SET_FIELD(ib_cntl, SDMA0_GFX_IB_CNTL, IB_SWAP_ENABLE, 1);
#endif
		/* enable DMA IBs */
		FUNC2(mmSDMA0_GFX_IB_CNTL + sdma_offsets[i], ib_cntl);

		ring->sched.ready = true;
	}

	/* unhalt the MEs */
	FUNC11(adev, true);
	/* enable sdma ring preemption */
	FUNC10(adev, true);

	for (i = 0; i < adev->sdma.num_instances; i++) {
		ring = &adev->sdma.instance[i].ring;
		r = FUNC4(ring);
		if (r)
			return r;

		if (adev->mman.buffer_funcs_ring == ring)
			FUNC5(adev, true);
	}

	return 0;
}