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
typedef  scalar_t__ u32 ;
struct radeon_ring {int /*<<< orphan*/  ring_size; } ;
struct TYPE_6__ {int /*<<< orphan*/  installed; } ;
struct TYPE_5__ {int /*<<< orphan*/  cs_data; scalar_t__ reg_list_size; int /*<<< orphan*/  reg_list; } ;
struct TYPE_4__ {int /*<<< orphan*/  dpm_enabled; } ;
struct radeon_device {scalar_t__ family; int /*<<< orphan*/  dev; struct radeon_ring* ring; TYPE_3__ irq; TYPE_2__ rlc; TYPE_1__ pm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t CAYMAN_RING_TYPE_CP1_INDEX ; 
 size_t CAYMAN_RING_TYPE_CP2_INDEX ; 
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ; 
 int /*<<< orphan*/  CAYMAN_WB_DMA1_RPTR_OFFSET ; 
 scalar_t__ CHIP_VERDE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP1_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_WB_CP2_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*,size_t) ; 
 int FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*) ; 
 int /*<<< orphan*/  si_cs_data ; 
 int /*<<< orphan*/  FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC25 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC26 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct radeon_device*) ; 
 int FUNC28 (struct radeon_device*) ; 
 int /*<<< orphan*/  verde_rlc_save_restore_register_list ; 

__attribute__((used)) static int FUNC29(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	/* enable pcie gen2/3 link */
	FUNC22(rdev);
	/* enable aspm */
	FUNC23(rdev);

	/* scratch needs to be initialized before MC */
	r = FUNC5(rdev);
	if (r)
		return r;

	FUNC20(rdev);

	if (!rdev->pm.dpm_enabled) {
		r = FUNC19(rdev);
		if (r) {
			FUNC2("Failed to load MC firmware!\n");
			return r;
		}
	}

	r = FUNC21(rdev);
	if (r)
		return r;
	FUNC16(rdev);

	/* allocate rlc buffers */
	if (rdev->family == CHIP_VERDE) {
		rdev->rlc.reg_list = verde_rlc_save_restore_register_list;
		rdev->rlc.reg_list_size =
			(u32)FUNC0(verde_rlc_save_restore_register_list);
	}
	rdev->rlc.cs_data = si_cs_data;
	r = FUNC28(rdev);
	if (r) {
		FUNC2("Failed to init rlc BOs!\n");
		return r;
	}

	/* allocate wb buffer */
	r = FUNC13(rdev);
	if (r)
		return r;

	r = FUNC7(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC4(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC7(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
	if (r) {
		FUNC4(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC7(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
	if (r) {
		FUNC4(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC7(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC4(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	r = FUNC7(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
	if (r) {
		FUNC4(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	FUNC25(rdev);
	FUNC27(rdev);

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC10(rdev);
		if (r)
			return r;
	}

	r = FUNC17(rdev);
	if (r) {
		FUNC2("radeon: IH init failed (%d).\n", r);
		FUNC9(rdev);
		return r;
	}
	FUNC18(rdev);

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	r = FUNC11(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
	r = FUNC11(rdev, ring, ring->ring_size, RADEON_WB_CP1_RPTR_OFFSET,
			     RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
	r = FUNC11(rdev, ring, ring->ring_size, RADEON_WB_CP2_RPTR_OFFSET,
			     RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC11(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     FUNC1(DMA_PACKET_NOP, 0, 0, 0, 0));
	if (r)
		return r;

	ring = &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX];
	r = FUNC11(rdev, ring, ring->ring_size, CAYMAN_WB_DMA1_RPTR_OFFSET,
			     FUNC1(DMA_PACKET_NOP, 0, 0, 0, 0));
	if (r)
		return r;

	r = FUNC14(rdev);
	if (r)
		return r;
	r = FUNC15(rdev);
	if (r)
		return r;

	r = FUNC3(rdev);
	if (r)
		return r;

	FUNC24(rdev);
	FUNC26(rdev);

	r = FUNC8(rdev);
	if (r) {
		FUNC4(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC12(rdev);
	if (r) {
		FUNC4(rdev->dev, "vm manager initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC6(rdev);
	if (r)
		return r;

	return 0;
}