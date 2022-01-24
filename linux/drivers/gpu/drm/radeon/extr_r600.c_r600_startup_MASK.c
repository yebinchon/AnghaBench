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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RADEON_CP_PACKET2 ; 
 int RADEON_IS_AGP ; 
 size_t RADEON_RING_TYPE_GFX_INDEX ; 
 int /*<<< orphan*/  RADEON_WB_CP_RPTR_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 int FUNC3 (struct radeon_device*) ; 
 int FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 
 int FUNC6 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*) ; 
 int FUNC9 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct radeon_device*) ; 
 int FUNC13 (struct radeon_device*) ; 
 int FUNC14 (struct radeon_device*) ; 
 int FUNC15 (struct radeon_device*,size_t) ; 
 int FUNC16 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct radeon_device*) ; 
 int FUNC18 (struct radeon_device*) ; 
 int FUNC19 (struct radeon_device*,struct radeon_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC21(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int r;

	/* enable pcie gen2 link */
	FUNC10(rdev);

	/* scratch needs to be initialized before MC */
	r = FUNC13(rdev);
	if (r)
		return r;

	FUNC8(rdev);

	if (rdev->flags & RADEON_IS_AGP) {
		FUNC2(rdev);
	} else {
		r = FUNC9(rdev);
		if (r)
			return r;
	}
	FUNC5(rdev);

	/* allocate wb buffer */
	r = FUNC20(rdev);
	if (r)
		return r;

	r = FUNC15(rdev, RADEON_RING_TYPE_GFX_INDEX);
	if (r) {
		FUNC1(rdev->dev, "failed initializing CP fences (%d).\n", r);
		return r;
	}

	FUNC12(rdev);

	/* Enable IRQ */
	if (!rdev->irq.installed) {
		r = FUNC18(rdev);
		if (r)
			return r;
	}

	r = FUNC6(rdev);
	if (r) {
		FUNC0("radeon: IH init failed (%d).\n", r);
		FUNC17(rdev);
		return r;
	}
	FUNC7(rdev);

	ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
	r = FUNC19(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
			     RADEON_CP_PACKET2);
	if (r)
		return r;

	r = FUNC3(rdev);
	if (r)
		return r;
	r = FUNC4(rdev);
	if (r)
		return r;

	FUNC11(rdev);

	r = FUNC16(rdev);
	if (r) {
		FUNC1(rdev->dev, "IB initialization failed (%d).\n", r);
		return r;
	}

	r = FUNC14(rdev);
	if (r) {
		FUNC0("radeon: audio init failed\n");
		return r;
	}

	return 0;
}