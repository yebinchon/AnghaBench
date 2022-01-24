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
typedef  size_t u32 ;
struct dma_resv_list {size_t shared_count; int /*<<< orphan*/ * shared; } ;
struct dma_resv {int /*<<< orphan*/  seq; int /*<<< orphan*/  fence_excl; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_resv*) ; 
 struct dma_fence* FUNC4 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC5 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct dma_fence* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct dma_resv *obj, struct dma_fence *fence)
{
	struct dma_fence *old_fence = FUNC4(obj);
	struct dma_resv_list *old;
	u32 i = 0;

	FUNC3(obj);

	old = FUNC5(obj);
	if (old)
		i = old->shared_count;

	if (fence)
		FUNC1(fence);

	FUNC7();
	FUNC10(&obj->seq);
	/* write_seqcount_begin provides the necessary memory barrier */
	FUNC0(obj->fence_excl, fence);
	if (old)
		old->shared_count = 0;
	FUNC11(&obj->seq);
	FUNC8();

	/* inplace update, no shared fences */
	while (i--)
		FUNC2(FUNC9(old->shared[i],
						FUNC6(obj)));

	FUNC2(old_fence);
}