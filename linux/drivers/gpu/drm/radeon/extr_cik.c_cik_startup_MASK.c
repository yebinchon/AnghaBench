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
typedef  void* u32 ;
struct radeon_ring {int me; int queue; int /*<<< orphan*/  ring_size; int /*<<< orphan*/  wptr_offs; scalar_t__ pipe; } ;
struct TYPE_6__ {int /*<<< orphan*/  installed; } ;
struct TYPE_5__ {int cp_table_size; int /*<<< orphan*/  cs_data; void* reg_list_size; void* reg_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  dpm_enabled; } ;
struct radeon_device {int flags; scalar_t__ family; int /*<<< orphan*/  dev; struct radeon_ring* ring; scalar_t__ new_fw; TYPE_3__ irq; TYPE_2__ rlc; TYPE_1__ pm; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (void*) ; 
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int /*<<< orphan*/  CAYMAN_WB_DMA1_RPTR_OFFSET ; 
 scalar_t__ CHIP_HAWAII ; 
 scalar_t__ CHIP_KAVERI ; 
 int /*<<< orphan*/  CIK_WB_CP1_WPTR_OFFSET ; 
 int /*<<< orphan*/  CIK_WB_CP2_WPTR_OFFSET ; 
 int CP_ME_TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PACKET3_NOP ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 void* RADEON_CP_PACKET2 ; 
 int RADEON_IS_IGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP1_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_WB_CP2_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int /*<<< orphan*/  SDMA_OPCODE_NOP ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ci_cs_data ; 
 int FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 
 void* kalindi_rlc_save_restore_register_list ; 
 int FUNC21 (struct radeon_device*) ; 
 int FUNC22 (struct radeon_device*) ; 
 int FUNC23 (struct radeon_device*,size_t) ; 
 int FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int FUNC26 (struct radeon_device*) ; 
 int FUNC27 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int FUNC28 (struct radeon_device*) ; 
 int FUNC29 (struct radeon_device*) ; 
 void* spectre_rlc_save_restore_register_list ; 
 int FUNC30 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC31(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	u32 nop;
	int r;

	/* enable pcie gen2/3 link */
	FUNC13(rdev);
	/* enable aspm */
	FUNC14(rdev);

	/* scratch needs to be initialized before MC */
	r = FUNC21(rdev);
	if (r)
		return r;

	FUNC10(rdev);

	if (!(rdev->flags & RADEON_IS_IGP) && !rdev->pm.dpm_enabled) {
		r = FUNC5(rdev);
		if (r) {
			FUNC2("Failed to load MC firmware!\n");
			return r;
		}
	}

	r = FUNC12(rdev);
	if (r)
		return r;
	FUNC7(rdev);

	/* allocate rlc buffers */
	if (rdev->flags & RADEON_IS_IGP) {
		if (rdev->family == CHIP_KAVERI) {
			rdev->rlc.reg_list = spectre_rlc_save_restore_register_list;
			rdev->rlc.reg_list_size =
				(u32)FUNC1(spectre_rlc_save_restore_register_list);
		} else {
			rdev->rlc.reg_list = kalindi_rlc_save_restore_register_list;
			rdev->rlc.reg_list_size =
				(u32)FUNC1(kalindi_rlc_save_restore_register_list);
		}
	}
	rdev->rlc.cs_data = ci_cs_data;
	rdev->rlc.cp_table_size = FUNC0(CP_ME_TABLE_SIZE * 5 * 4, 2048); /* CP JT */
	rdev->rlc.cp_table_size += 64 * 1024; /* GDS */
	r = FUNC30(rdev);
	if (r) {
		FUNC2("Failed to init rlc BOs!\n");
		return r;
	}

	/* allocate wb buffer */
	r = FUNC29(rdev);
	if (r)
		return r;

	/* allocate mec buffers */
	r = FUNC11(rdev);
	if (r) {
		FUNC2("Failed to init MEC BOs!\n");
		return r;
	}

	r = FUNC23(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC20(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC23(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
	if (r) {
		FUNC20(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC23(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
	if (r) {
		FUNC20(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC23(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC20(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	r = FUNC23(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
	if (r) {
		FUNC20(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	FUNC17(rdev);
	FUNC19(rdev);

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC26(rdev);
		if (r)
			return r;
	}

	r = FUNC8(rdev);
	if (r) {
		FUNC2("radeon: IH init failed (%d).\n", r);
		FUNC25(rdev);
		return r;
	}
	FUNC9(rdev);

	if (rdev->family == CHIP_HAWAII) {
		if (rdev->new_fw)
			nop = FUNC3(PACKET3_NOP, 0x3FFF);
		else
			nop = RADEON_CP_PACKET2;
	} else {
		nop = FUNC3(PACKET3_NOP, 0x3FFF);
	}

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	r = FUNC27(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     nop);
	if (r)
		return r;

	/* set up the compute queues */
	/* type-2 packets are deprecated on MEC, use type-3 instead */
	ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
	r = FUNC27(rdev, ring, ring->ring_size, RADEON_WB_CP1_RPTR_OFFSET,
			     nop);
	if (r)
		return r;
	ring->me = 1; /* first MEC */
	ring->pipe = 0; /* first pipe */
	ring->queue = 0; /* first queue */
	ring->wptr_offs = CIK_WB_CP1_WPTR_OFFSET;

	/* type-2 packets are deprecated on MEC, use type-3 instead */
	ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
	r = FUNC27(rdev, ring, ring->ring_size, RADEON_WB_CP2_RPTR_OFFSET,
			     nop);
	if (r)
		return r;
	/* dGPU only have 1 MEC */
	ring->me = 1; /* first MEC */
	ring->pipe = 0; /* first pipe */
	ring->queue = 1; /* second queue */
	ring->wptr_offs = CIK_WB_CP2_WPTR_OFFSET;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC27(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     FUNC4(SDMA_OPCODE_NOP, 0, 0));
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX];
	r = FUNC27(rdev, ring, ring->ring_size, CAYMAN_WB_DMA1_RPTR_OFFSET,
			     FUNC4(SDMA_OPCODE_NOP, 0, 0));
	if (r)
		return r;

	r = FUNC6(rdev);
	if (r)
		return r;

	r = FUNC15(rdev);
	if (r)
		return r;

	FUNC16(rdev);
	FUNC18(rdev);

	r = FUNC24(rdev);
	if (r) {
		FUNC20(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC28(rdev);
	if (r) {
		FUNC20(rdev->dev, "vm manager initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC22(rdev);
	if (r)
		return r;

	return 0;
}