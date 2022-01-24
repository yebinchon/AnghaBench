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
struct radeon_device {int flags; int /*<<< orphan*/  dev; struct radeon_ring* ring; TYPE_3__ irq; TYPE_2__ rlc; TYPE_1__ pm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int RADEON_IS_AGP ; 
 int RADEON_IS_IGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  evergreen_cs_data ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int FUNC20 (struct radeon_device*) ; 
 int FUNC21 (struct radeon_device*,size_t) ; 
 int FUNC22 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct radeon_device*) ; 
 int FUNC24 (struct radeon_device*) ; 
 int FUNC25 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC26 (struct radeon_device*) ; 
 int FUNC27 (struct radeon_device*) ; 
 int /*<<< orphan*/  sumo_rlc_save_restore_register_list ; 

__attribute__((used)) static int FUNC28(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	/* enable pcie gen2 link */
	FUNC12(rdev);
	/* enable aspm */
	FUNC13(rdev);

	/* scratch needs to be initialized before MC */
	r = FUNC19(rdev);
	if (r)
		return r;

	FUNC10(rdev);

	if (FUNC1(rdev) && !rdev->pm.dpm_enabled) {
		r = FUNC16(rdev);
		if (r) {
			FUNC3("Failed to load MC firmware!\n");
			return r;
		}
	}

	if (rdev->flags & RADEON_IS_AGP) {
		FUNC5(rdev);
	} else {
		r = FUNC11(rdev);
		if (r)
			return r;
	}
	FUNC8(rdev);

	/* allocate rlc buffers */
	if (rdev->flags & RADEON_IS_IGP) {
		rdev->rlc.reg_list = sumo_rlc_save_restore_register_list;
		rdev->rlc.reg_list_size =
			(u32)FUNC0(sumo_rlc_save_restore_register_list);
		rdev->rlc.cs_data = evergreen_cs_data;
		r = FUNC27(rdev);
		if (r) {
			FUNC3("Failed to init rlc BOs!\n");
			return r;
		}
	}

	/* allocate wb buffer */
	r = FUNC26(rdev);
	if (r)
		return r;

	r = FUNC21(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC4(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC21(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC4(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	FUNC15(rdev);

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC24(rdev);
		if (r)
			return r;
	}

	r = FUNC18(rdev);
	if (r) {
		FUNC3("radeon: IH init failed (%d).\n", r);
		FUNC23(rdev);
		return r;
	}
	FUNC9(rdev);

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	r = FUNC25(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC25(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     FUNC2(DMA_PACKET_NOP, 0, 0));
	if (r)
		return r;

	r = FUNC6(rdev);
	if (r)
		return r;
	r = FUNC7(rdev);
	if (r)
		return r;
	r = FUNC17(rdev);
	if (r)
		return r;

	FUNC14(rdev);

	r = FUNC22(rdev);
	if (r) {
		FUNC4(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC20(rdev);
	if (r) {
		FUNC3("radeon: audio init failed\n");
		return r;
	}

	return 0;
}