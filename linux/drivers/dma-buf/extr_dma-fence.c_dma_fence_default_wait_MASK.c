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
struct dma_fence {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  cb_list; TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  node; int /*<<< orphan*/  func; } ;
struct default_wait_cb {TYPE_2__ base; int /*<<< orphan*/  task; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_signaling ) (struct dma_fence*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 long ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  dma_fence_default_wait_cb ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 long FUNC5 (long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_fence*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct dma_fence*) ; 

signed long
FUNC13(struct dma_fence *fence, bool intr, signed long timeout)
{
	struct default_wait_cb cb;
	unsigned long flags;
	signed long ret = timeout ? timeout : 1;
	bool was_set;

	if (FUNC11(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
		return ret;

	FUNC7(fence->lock, flags);

	if (intr && FUNC6(current)) {
		ret = -ERESTARTSYS;
		goto out;
	}

	was_set = FUNC10(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
				   &fence->flags);

	if (FUNC11(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
		goto out;

	if (!was_set && fence->ops->enable_signaling) {
		FUNC12(fence);

		if (!fence->ops->enable_signaling(fence)) {
			FUNC1(fence);
			goto out;
		}
	}

	if (!timeout) {
		ret = 0;
		goto out;
	}

	cb.base.func = dma_fence_default_wait_cb;
	cb.task = current;
	FUNC2(&cb.base.node, &fence->cb_list);

	while (!FUNC11(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) && ret > 0) {
		if (intr)
			FUNC0(TASK_INTERRUPTIBLE);
		else
			FUNC0(TASK_UNINTERRUPTIBLE);
		FUNC8(fence->lock, flags);

		ret = FUNC5(ret);

		FUNC7(fence->lock, flags);
		if (ret > 0 && intr && FUNC6(current))
			ret = -ERESTARTSYS;
	}

	if (!FUNC4(&cb.base.node))
		FUNC3(&cb.base.node);
	FUNC0(TASK_RUNNING);

out:
	FUNC8(fence->lock, flags);
	return ret;
}