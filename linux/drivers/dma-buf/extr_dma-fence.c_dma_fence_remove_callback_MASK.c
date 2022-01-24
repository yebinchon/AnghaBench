#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dma_fence_cb {int /*<<< orphan*/  node; } ;
struct dma_fence {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

bool
FUNC4(struct dma_fence *fence, struct dma_fence_cb *cb)
{
	unsigned long flags;
	bool ret;

	FUNC2(fence->lock, flags);

	ret = !FUNC1(&cb->node);
	if (ret)
		FUNC0(&cb->node);

	FUNC3(fence->lock, flags);

	return ret;
}