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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct vmw_fence_obj {TYPE_1__ base; } ;
struct vmw_fence_manager {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int FUNC0 (TYPE_1__*) ; 
 struct vmw_fence_manager* FUNC1 (struct vmw_fence_obj*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_fence_manager*) ; 

bool FUNC4(struct vmw_fence_obj *fence)
{
	struct vmw_fence_manager *fman = FUNC1(fence);

	if (FUNC2(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->base.flags))
		return 1;

	FUNC3(fman);

	return FUNC0(&fence->base);
}