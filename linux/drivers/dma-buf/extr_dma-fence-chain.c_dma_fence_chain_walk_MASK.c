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
struct dma_fence_chain {int /*<<< orphan*/  prev; struct dma_fence* fence; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 struct dma_fence* FUNC0 (void**,void*,void*) ; 
 struct dma_fence* FUNC1 (struct dma_fence_chain*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 struct dma_fence_chain* FUNC4 (struct dma_fence*) ; 

struct dma_fence *FUNC5(struct dma_fence *fence)
{
	struct dma_fence_chain *chain, *prev_chain;
	struct dma_fence *prev, *replacement, *tmp;

	chain = FUNC4(fence);
	if (!chain) {
		FUNC3(fence);
		return NULL;
	}

	while ((prev = FUNC1(chain))) {

		prev_chain = FUNC4(prev);
		if (prev_chain) {
			if (!FUNC2(prev_chain->fence))
				break;

			replacement = FUNC1(prev_chain);
		} else {
			if (!FUNC2(prev))
				break;

			replacement = NULL;
		}

		tmp = FUNC0((void **)&chain->prev, (void *)prev, (void *)replacement);
		if (tmp == prev)
			FUNC3(tmp);
		else
			FUNC3(replacement);
		FUNC3(prev);
	}

	FUNC3(fence);
	return prev;
}