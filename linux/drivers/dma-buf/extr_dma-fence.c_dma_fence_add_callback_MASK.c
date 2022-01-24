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
struct dma_fence_cb {int /*<<< orphan*/  node; scalar_t__ func; } ;
struct dma_fence {int /*<<< orphan*/  lock; int /*<<< orphan*/  cb_list; TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ dma_fence_func_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_signaling ) (struct dma_fence*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_fence*) ; 

int FUNC10(struct dma_fence *fence, struct dma_fence_cb *cb,
			   dma_fence_func_t func)
{
	unsigned long flags;
	int ret = 0;
	bool was_set;

	if (FUNC1(!fence || !func))
		return -EINVAL;

	if (FUNC8(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
		FUNC0(&cb->node);
		return -ENOENT;
	}

	FUNC4(fence->lock, flags);

	was_set = FUNC7(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
				   &fence->flags);

	if (FUNC8(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
		ret = -ENOENT;
	else if (!was_set && fence->ops->enable_signaling) {
		FUNC9(fence);

		if (!fence->ops->enable_signaling(fence)) {
			FUNC2(fence);
			ret = -ENOENT;
		}
	}

	if (!ret) {
		cb->func = func;
		FUNC3(&cb->node, &fence->cb_list);
	} else
		FUNC0(&cb->node);
	FUNC5(fence->lock, flags);

	return ret;
}