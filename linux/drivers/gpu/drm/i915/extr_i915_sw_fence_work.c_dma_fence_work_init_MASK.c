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
struct dma_fence_work_ops {int dummy; } ;
struct dma_fence_work {struct dma_fence_work_ops const* ops; int /*<<< orphan*/  work; int /*<<< orphan*/  chain; int /*<<< orphan*/  lock; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fence_notify ; 
 int /*<<< orphan*/  fence_ops ; 
 int /*<<< orphan*/  fence_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dma_fence_work *f,
			 const struct dma_fence_work_ops *ops)
{
	FUNC3(&f->lock);
	FUNC1(&f->dma, &fence_ops, &f->lock, 0, 0);
	FUNC2(&f->chain, fence_notify);
	FUNC0(&f->work, fence_work);

	f->ops = ops;
}