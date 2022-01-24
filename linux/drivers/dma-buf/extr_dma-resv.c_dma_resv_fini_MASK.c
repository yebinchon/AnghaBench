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
struct dma_resv_list {int dummy; } ;
struct dma_resv {int /*<<< orphan*/  lock; int /*<<< orphan*/  fence; int /*<<< orphan*/  fence_excl; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_resv_list*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dma_resv *obj)
{
	struct dma_resv_list *fobj;
	struct dma_fence *excl;

	/*
	 * This object should be dead and all references must have
	 * been released to it, so no need to be protected with rcu.
	 */
	excl = FUNC2(obj->fence_excl, 1);
	if (excl)
		FUNC0(excl);

	fobj = FUNC2(obj->fence, 1);
	FUNC1(fobj);
	FUNC3(&obj->lock);
}