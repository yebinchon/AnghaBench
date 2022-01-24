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
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 unsigned int I915_WAIT_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_resv*,int /*<<< orphan*/ *) ; 
 struct dma_fence* FUNC2 (struct dma_resv*) ; 
 int FUNC3 (struct dma_resv*,struct dma_fence**,unsigned int*,struct dma_fence***) ; 
 scalar_t__ FUNC4 (struct dma_resv*,int) ; 
 scalar_t__ FUNC5 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_resv*) ; 
 long FUNC7 (struct dma_fence*,unsigned int,long) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_fence**) ; 

__attribute__((used)) static long
FUNC9(struct dma_resv *resv,
				 unsigned int flags,
				 long timeout)
{
	struct dma_fence *excl;
	bool prune_fences = false;

	if (flags & I915_WAIT_ALL) {
		struct dma_fence **shared;
		unsigned int count, i;
		int ret;

		ret = FUNC3(resv,
							&excl, &count, &shared);
		if (ret)
			return ret;

		for (i = 0; i < count; i++) {
			timeout = FUNC7(shared[i],
							     flags, timeout);
			if (timeout < 0)
				break;

			FUNC0(shared[i]);
		}

		for (; i < count; i++)
			FUNC0(shared[i]);
		FUNC8(shared);

		/*
		 * If both shared fences and an exclusive fence exist,
		 * then by construction the shared fences must be later
		 * than the exclusive fence. If we successfully wait for
		 * all the shared fences, we know that the exclusive fence
		 * must all be signaled. If all the shared fences are
		 * signaled, we can prune the array and recover the
		 * floating references on the fences/requests.
		 */
		prune_fences = count && timeout >= 0;
	} else {
		excl = FUNC2(resv);
	}

	if (excl && timeout >= 0)
		timeout = FUNC7(excl, flags, timeout);

	FUNC0(excl);

	/*
	 * Opportunistically prune the fences iff we know they have *all* been
	 * signaled.
	 */
	if (prune_fences && FUNC5(resv)) {
		if (FUNC4(resv, true))
			FUNC1(resv, NULL);
		FUNC6(resv);
	}

	return timeout;
}