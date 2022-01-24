#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nouveau_fence_chan {int /*<<< orphan*/  notify_ref; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct nouveau_fence {TYPE_1__ base; int /*<<< orphan*/  channel; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_USER_BITS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nouveau_fence_chan* FUNC3 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct nouveau_fence *fence)
{
	int drop = 0;

	FUNC1(&fence->base);
	FUNC2(&fence->head);
	FUNC4(fence->channel, NULL);

	if (FUNC5(DMA_FENCE_FLAG_USER_BITS, &fence->base.flags)) {
		struct nouveau_fence_chan *fctx = FUNC3(fence);

		if (!--fctx->notify_ref)
			drop = 1;
	}

	FUNC0(&fence->base);
	return drop;
}