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
struct TYPE_4__ {int /*<<< orphan*/  func; int /*<<< orphan*/ * private; scalar_t__ flags; } ;
struct radeon_fence {size_t ring; scalar_t__ seq; int /*<<< orphan*/  base; TYPE_2__ fence_wake; struct radeon_device* rdev; } ;
struct radeon_device {int /*<<< orphan*/  fence_queue; TYPE_1__* fence_drv; int /*<<< orphan*/  exclusive_lock; } ;
struct dma_fence {int dummy; } ;
struct TYPE_3__ {int delayed_irq; int /*<<< orphan*/  last_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct radeon_device*,size_t) ; 
 int /*<<< orphan*/  radeon_fence_check_signaled ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,size_t) ; 
 scalar_t__ FUNC8 (struct radeon_device*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,size_t) ; 
 struct radeon_fence* FUNC10 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC13(struct dma_fence *f)
{
	struct radeon_fence *fence = FUNC10(f);
	struct radeon_device *rdev = fence->rdev;

	if (FUNC2(&rdev->fence_drv[fence->ring].last_seq) >= fence->seq)
		return false;

	if (FUNC4(&rdev->exclusive_lock)) {
		FUNC7(rdev, fence->ring);

		if (FUNC5(rdev, fence->ring))
			FUNC12(&rdev->fence_queue);

		/* did fence get signaled after we enabled the sw irq? */
		if (FUNC2(&rdev->fence_drv[fence->ring].last_seq) >= fence->seq) {
			FUNC9(rdev, fence->ring);
			FUNC11(&rdev->exclusive_lock);
			return false;
		}

		FUNC11(&rdev->exclusive_lock);
	} else {
		/* we're probably in a lockup, lets not fiddle too much */
		if (FUNC8(rdev, fence->ring))
			rdev->fence_drv[fence->ring].delayed_irq = true;
		FUNC6(rdev, fence->ring);
	}

	fence->fence_wake.flags = 0;
	fence->fence_wake.private = NULL;
	fence->fence_wake.func = radeon_fence_check_signaled;
	FUNC1(&rdev->fence_queue, &fence->fence_wake);
	FUNC3(f);

	FUNC0(&fence->base, "armed on ring %i!\n", fence->ring);
	return true;
}