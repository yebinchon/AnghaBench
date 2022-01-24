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
struct msm_fence_context {int /*<<< orphan*/  last_fence; int /*<<< orphan*/  context; int /*<<< orphan*/  spinlock; } ;
struct dma_fence {int dummy; } ;
struct msm_fence {struct dma_fence base; struct msm_fence_context* fctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct dma_fence* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct msm_fence* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_fence_ops ; 

struct dma_fence *
FUNC3(struct msm_fence_context *fctx)
{
	struct msm_fence *f;

	f = FUNC2(sizeof(*f), GFP_KERNEL);
	if (!f)
		return FUNC0(-ENOMEM);

	f->fctx = fctx;

	FUNC1(&f->base, &msm_fence_ops, &fctx->spinlock,
		       fctx->context, ++fctx->last_fence);

	return &f->base;
}