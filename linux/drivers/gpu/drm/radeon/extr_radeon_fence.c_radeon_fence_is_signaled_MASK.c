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
typedef  scalar_t__ u64 ;
struct radeon_fence {unsigned int ring; scalar_t__ seq; struct radeon_device* rdev; } ;
struct radeon_device {TYPE_1__* fence_drv; int /*<<< orphan*/  exclusive_lock; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,unsigned int) ; 
 struct radeon_fence* FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC5(struct dma_fence *f)
{
	struct radeon_fence *fence = FUNC3(f);
	struct radeon_device *rdev = fence->rdev;
	unsigned ring = fence->ring;
	u64 seq = fence->seq;

	if (FUNC0(&rdev->fence_drv[ring].last_seq) >= seq) {
		return true;
	}

	if (FUNC1(&rdev->exclusive_lock)) {
		FUNC2(rdev, ring);
		FUNC4(&rdev->exclusive_lock);

		if (FUNC0(&rdev->fence_drv[ring].last_seq) >= seq) {
			return true;
		}
	}
	return false;
}