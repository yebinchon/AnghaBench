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
struct nouveau_fence_chan {int /*<<< orphan*/  fence_ref; } ;
struct nouveau_fence {int /*<<< orphan*/  base; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_fence* FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nouveau_fence_chan* FUNC3 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  nouveau_fence_context_put ; 

__attribute__((used)) static void FUNC4(struct dma_fence *f)
{
	struct nouveau_fence *fence = FUNC1(f);
	struct nouveau_fence_chan *fctx = FUNC3(fence);

	FUNC2(&fctx->fence_ref, nouveau_fence_context_put);
	FUNC0(&fence->base);
}