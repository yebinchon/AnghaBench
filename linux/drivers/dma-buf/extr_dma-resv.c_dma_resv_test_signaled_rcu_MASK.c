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
struct dma_resv {int /*<<< orphan*/  seq; int /*<<< orphan*/  fence_excl; int /*<<< orphan*/  fence; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dma_fence*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 

bool FUNC6(struct dma_resv *obj, bool test_all)
{
	unsigned seq, shared_count;
	int ret;

	FUNC2();
retry:
	ret = true;
	shared_count = 0;
	seq = FUNC4(&obj->seq);

	if (test_all) {
		unsigned i;

		struct dma_resv_list *fobj = FUNC1(obj->fence);

		if (fobj)
			shared_count = fobj->shared_count;

		for (i = 0; i < shared_count; ++i) {
			struct dma_fence *fence = FUNC1(fobj->shared[i]);

			ret = FUNC0(fence);
			if (ret < 0)
				goto retry;
			else if (!ret)
				break;
		}

		if (FUNC5(&obj->seq, seq))
			goto retry;
	}

	if (!shared_count) {
		struct dma_fence *fence_excl = FUNC1(obj->fence_excl);

		if (fence_excl) {
			ret = FUNC0(fence_excl);
			if (ret < 0)
				goto retry;

			if (FUNC5(&obj->seq, seq))
				goto retry;
		}
	}

	FUNC3();
	return ret;
}