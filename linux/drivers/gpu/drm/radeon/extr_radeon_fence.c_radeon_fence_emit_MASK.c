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
typedef  scalar_t__ u64 ;
struct radeon_fence {int ring; int is_vm_update; scalar_t__ seq; int /*<<< orphan*/  base; struct radeon_device* rdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct radeon_device {int /*<<< orphan*/  ddev; scalar_t__ fence_context; TYPE_2__ fence_queue; TYPE_1__* fence_drv; } ;
struct TYPE_3__ {scalar_t__* sync_seq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 struct radeon_fence* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  radeon_fence_ops ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int,struct radeon_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__) ; 

int FUNC5(struct radeon_device *rdev,
		      struct radeon_fence **fence,
		      int ring)
{
	u64 seq;

	/* we are protected by the ring emission mutex */
	*fence = FUNC1(sizeof(struct radeon_fence), GFP_KERNEL);
	if ((*fence) == NULL) {
		return -ENOMEM;
	}
	(*fence)->rdev = rdev;
	(*fence)->seq = seq = ++rdev->fence_drv[ring].sync_seq[ring];
	(*fence)->ring = ring;
	(*fence)->is_vm_update = false;
	FUNC0(&(*fence)->base, &radeon_fence_ops,
		       &rdev->fence_queue.lock,
		       rdev->fence_context + ring,
		       seq);
	FUNC2(rdev, ring, *fence);
	FUNC4(rdev->ddev, ring, (*fence)->seq);
	FUNC3(rdev, ring);
	return 0;
}