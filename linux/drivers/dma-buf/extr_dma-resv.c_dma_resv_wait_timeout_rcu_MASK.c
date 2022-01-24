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
struct dma_resv_list {unsigned int shared_count; int /*<<< orphan*/ * shared; } ;
struct dma_resv {int /*<<< orphan*/  seq; int /*<<< orphan*/  fence; int /*<<< orphan*/  fence_excl; } ;
struct dma_fence {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 scalar_t__ FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 long FUNC3 (struct dma_fence*,int,long) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC10(struct dma_resv *obj,
			       bool wait_all, bool intr,
			       unsigned long timeout)
{
	struct dma_fence *fence;
	unsigned seq, shared_count;
	long ret = timeout ? timeout : 1;
	int i;

retry:
	shared_count = 0;
	seq = FUNC7(&obj->seq);
	FUNC5();
	i = -1;

	fence = FUNC4(obj->fence_excl);
	if (fence && !FUNC9(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags)) {
		if (!FUNC0(fence))
			goto unlock_retry;

		if (FUNC1(fence)) {
			FUNC2(fence);
			fence = NULL;
		}

	} else {
		fence = NULL;
	}

	if (wait_all) {
		struct dma_resv_list *fobj = FUNC4(obj->fence);

		if (fobj)
			shared_count = fobj->shared_count;

		for (i = 0; !fence && i < shared_count; ++i) {
			struct dma_fence *lfence = FUNC4(fobj->shared[i]);

			if (FUNC9(DMA_FENCE_FLAG_SIGNALED_BIT,
				     &lfence->flags))
				continue;

			if (!FUNC0(lfence))
				goto unlock_retry;

			if (FUNC1(lfence)) {
				FUNC2(lfence);
				continue;
			}

			fence = lfence;
			break;
		}
	}

	FUNC6();
	if (fence) {
		if (FUNC8(&obj->seq, seq)) {
			FUNC2(fence);
			goto retry;
		}

		ret = FUNC3(fence, intr, ret);
		FUNC2(fence);
		if (ret > 0 && wait_all && (i + 1 < shared_count))
			goto retry;
	}
	return ret;

unlock_retry:
	FUNC6();
	goto retry;
}