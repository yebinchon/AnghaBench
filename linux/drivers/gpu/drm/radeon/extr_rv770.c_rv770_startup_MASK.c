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
struct radeon_ring {int /*<<< orphan*/  ring_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  installed; } ;
struct radeon_device {int flags; int /*<<< orphan*/  dev; struct radeon_ring* ring; TYPE_1__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_PACKET_NOP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t R600_RING_TYPE_DMA_INDEX ; 
 int /*<<< orphan*/  R600_WB_DMA_RPTR_OFFSET ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int RADEON_IS_AGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*,size_t) ; 
 int FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct radeon_device*) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC22 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC23(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	/* enable pcie gen2 link */
	FUNC20(rdev);

	/* scratch needs to be initialized before MC */
	r = FUNC7(rdev);
	if (r)
		return r;

	FUNC18(rdev);

	if (rdev->flags & RADEON_IS_AGP) {
		FUNC15(rdev);
	} else {
		r = FUNC19(rdev);
		if (r)
			return r;
	}

	FUNC17(rdev);

	/* allocate wb buffer */
	r = FUNC14(rdev);
	if (r)
		return r;

	r = FUNC9(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC2(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	r = FUNC9(rdev, R600_RING_TYPE_DMA_INDEX);
	if (r) {
		FUNC2(rdev->dev, "failed initializing DMA fences (%d).\n", r);
		return r;
	}

	FUNC22(rdev);

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC12(rdev);
		if (r)
			return r;
	}

	r = FUNC5(rdev);
	if (r) {
		FUNC1("radeon: IH init failed (%d).\n", r);
		FUNC11(rdev);
		return r;
	}
	FUNC6(rdev);

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	r = FUNC13(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     RADEON_CP_PACKET2);
	if (r)
		return r;

	ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
	r = FUNC13(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
			     FUNC0(DMA_PACKET_NOP, 0, 0, 0));
	if (r)
		return r;

	r = FUNC16(rdev);
	if (r)
		return r;
	r = FUNC3(rdev);
	if (r)
		return r;

	r = FUNC4(rdev);
	if (r)
		return r;

	FUNC21(rdev);

	r = FUNC10(rdev);
	if (r) {
		FUNC2(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC8(rdev);
	if (r) {
		FUNC1("radeon: audio init failed\n");
		return r;
	}

	return 0;
}