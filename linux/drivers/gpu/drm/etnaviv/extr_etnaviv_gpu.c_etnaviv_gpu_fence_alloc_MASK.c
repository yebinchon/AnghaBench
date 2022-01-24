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
struct etnaviv_gpu {int /*<<< orphan*/  next_fence; int /*<<< orphan*/  fence_context; int /*<<< orphan*/  fence_spinlock; int /*<<< orphan*/  lock; } ;
struct dma_fence {int dummy; } ;
struct etnaviv_fence {struct dma_fence base; struct etnaviv_gpu* gpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  etnaviv_fence_ops ; 
 struct etnaviv_fence* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dma_fence *FUNC3(struct etnaviv_gpu *gpu)
{
	struct etnaviv_fence *f;

	/*
	 * GPU lock must already be held, otherwise fence completion order might
	 * not match the seqno order assigned here.
	 */
	FUNC2(&gpu->lock);

	f = FUNC1(sizeof(*f), GFP_KERNEL);
	if (!f)
		return NULL;

	f->gpu = gpu;

	FUNC0(&f->base, &etnaviv_fence_ops, &gpu->fence_spinlock,
		       gpu->fence_context, ++gpu->next_fence);

	return &f->base;
}