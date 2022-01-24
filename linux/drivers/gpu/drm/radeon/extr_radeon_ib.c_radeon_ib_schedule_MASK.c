#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct radeon_ring {int /*<<< orphan*/  ready; } ;
struct TYPE_4__ {int /*<<< orphan*/  last_vm_update; } ;
struct radeon_ib {size_t ring; int /*<<< orphan*/  fence; scalar_t__ vm; TYPE_1__ sync; int /*<<< orphan*/  length_dw; } ;
struct radeon_fence {int dummy; } ;
struct radeon_device {int /*<<< orphan*/  dev; struct radeon_ring* ring; } ;

/* Variables and functions */
 int EINVAL ; 
 int RADEON_NUM_SYNCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,size_t,struct radeon_ib*) ; 
 int FUNC4 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct radeon_device*,TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct radeon_device*,scalar_t__,size_t,int /*<<< orphan*/ ) ; 
 struct radeon_fence* FUNC12 (struct radeon_device*,scalar_t__,size_t) ; 

int FUNC13(struct radeon_device *rdev, struct radeon_ib *ib,
		       struct radeon_ib *const_ib, bool hdp_flush)
{
	struct radeon_ring *ring = &rdev->ring[ib->ring];
	int r = 0;

	if (!ib->length_dw || !ring->ready) {
		/* TODO: Nothings in the ib we should report. */
		FUNC0(rdev->dev, "couldn't schedule ib\n");
		return -EINVAL;
	}

	/* 64 dwords should be enough for fence too */
	r = FUNC4(rdev, ring, 64 + RADEON_NUM_SYNCS * 8);
	if (r) {
		FUNC0(rdev->dev, "scheduling IB failed (%d).\n", r);
		return r;
	}

	/* grab a vm id if necessary */
	if (ib->vm) {
		struct radeon_fence *vm_id_fence;
		vm_id_fence = FUNC12(rdev, ib->vm, ib->ring);
		FUNC7(&ib->sync, vm_id_fence);
	}

	/* sync with other rings */
	r = FUNC9(rdev, &ib->sync, ib->ring);
	if (r) {
		FUNC0(rdev->dev, "failed to sync rings (%d)\n", r);
		FUNC6(rdev, ring);
		return r;
	}

	if (ib->vm)
		FUNC11(rdev, ib->vm, ib->ring,
				ib->sync.last_vm_update);

	if (const_ib) {
		FUNC3(rdev, const_ib->ring, const_ib);
		FUNC8(rdev, &const_ib->sync, NULL);
	}
	FUNC3(rdev, ib->ring, ib);
	r = FUNC1(rdev, &ib->fence, ib->ring);
	if (r) {
		FUNC0(rdev->dev, "failed to emit fence for new IB (%d)\n", r);
		FUNC6(rdev, ring);
		return r;
	}
	if (const_ib) {
		const_ib->fence = FUNC2(ib->fence);
	}

	if (ib->vm)
		FUNC10(rdev, ib->vm, ib->fence);

	FUNC5(rdev, ring, hdp_flush);
	return 0;
}