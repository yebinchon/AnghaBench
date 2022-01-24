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
struct nouveau_fence_chan {int /*<<< orphan*/  notify; int /*<<< orphan*/  notify_ref; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct nouveau_fence {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_USER_BITS ; 
 struct nouveau_fence* FUNC0 (struct dma_fence*) ; 
 struct nouveau_fence_chan* FUNC1 (struct nouveau_fence*) ; 
 int FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct dma_fence *f)
{
	struct nouveau_fence *fence = FUNC0(f);
	struct nouveau_fence_chan *fctx = FUNC1(fence);
	bool ret;

	if (!fctx->notify_ref++)
		FUNC3(&fctx->notify);

	ret = FUNC2(f);
	if (ret)
		FUNC5(DMA_FENCE_FLAG_USER_BITS, &fence->base.flags);
	else if (!--fctx->notify_ref)
		FUNC4(&fctx->notify);

	return ret;
}