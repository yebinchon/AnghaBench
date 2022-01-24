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
struct dma_fence_chain {struct dma_fence* fence; int /*<<< orphan*/  prev; } ;
struct dma_fence {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct dma_fence* FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct dma_fence_chain* FUNC5 (struct dma_fence*) ; 

__attribute__((used)) static void FUNC6(struct dma_fence *fence)
{
	struct dma_fence_chain *chain = FUNC5(fence);
	struct dma_fence *prev;

	/* Manually unlink the chain as much as possible to avoid recursion
	 * and potential stack overflow.
	 */
	while ((prev = FUNC4(chain->prev, true))) {
		struct dma_fence_chain *prev_chain;

		if (FUNC3(&prev->refcount) > 1)
		       break;

		prev_chain = FUNC5(prev);
		if (!prev_chain)
			break;

		/* No need for atomic operations since we hold the last
		 * reference to prev_chain.
		 */
		chain->prev = prev_chain->prev;
		FUNC0(prev_chain->prev, NULL);
		FUNC2(prev);
	}
	FUNC2(prev);

	FUNC2(chain->fence);
	FUNC1(fence);
}