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
struct nouveau_fence_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  notify; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct nouveau_fence {TYPE_1__ base; int /*<<< orphan*/  channel; } ;
struct nouveau_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nouveau_fence_chan* FUNC2 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  nouveau_fence_ops_legacy ; 
 int /*<<< orphan*/  nouveau_fence_ops_uevent ; 
 scalar_t__ FUNC3 (struct nouveau_channel*,struct nouveau_fence_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nouveau_channel* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool
FUNC9(struct nouveau_fence *fence)
{
	if (fence->base.ops == &nouveau_fence_ops_legacy ||
	    fence->base.ops == &nouveau_fence_ops_uevent) {
		struct nouveau_fence_chan *fctx = FUNC2(fence);
		struct nouveau_channel *chan;
		unsigned long flags;

		if (FUNC8(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->base.flags))
			return true;

		FUNC6(&fctx->lock, flags);
		chan = FUNC5(fence->channel, FUNC1(&fctx->lock));
		if (chan && FUNC3(chan, fctx))
			FUNC4(&fctx->notify);
		FUNC7(&fctx->lock, flags);
	}
	return FUNC0(&fence->base);
}