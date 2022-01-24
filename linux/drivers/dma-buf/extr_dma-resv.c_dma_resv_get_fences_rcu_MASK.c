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
struct dma_resv_list {int shared_max; unsigned int shared_count; int /*<<< orphan*/ * shared; } ;
struct dma_resv {int /*<<< orphan*/  seq; int /*<<< orphan*/  fence; int /*<<< orphan*/  fence_excl; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int GFP_NOWAIT ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence**) ; 
 struct dma_fence** FUNC3 (struct dma_fence**,size_t,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC9(struct dma_resv *obj,
			    struct dma_fence **pfence_excl,
			    unsigned *pshared_count,
			    struct dma_fence ***pshared)
{
	struct dma_fence **shared = NULL;
	struct dma_fence *fence_excl;
	unsigned int shared_count;
	int ret = 1;

	do {
		struct dma_resv_list *fobj;
		unsigned int i, seq;
		size_t sz = 0;

		shared_count = i = 0;

		FUNC5();
		seq = FUNC7(&obj->seq);

		fence_excl = FUNC4(obj->fence_excl);
		if (fence_excl && !FUNC0(fence_excl))
			goto unlock;

		fobj = FUNC4(obj->fence);
		if (fobj)
			sz += sizeof(*shared) * fobj->shared_max;

		if (!pfence_excl && fence_excl)
			sz += sizeof(*shared);

		if (sz) {
			struct dma_fence **nshared;

			nshared = FUNC3(shared, sz,
					   GFP_NOWAIT | __GFP_NOWARN);
			if (!nshared) {
				FUNC6();

				FUNC1(fence_excl);
				fence_excl = NULL;

				nshared = FUNC3(shared, sz, GFP_KERNEL);
				if (nshared) {
					shared = nshared;
					continue;
				}

				ret = -ENOMEM;
				break;
			}
			shared = nshared;
			shared_count = fobj ? fobj->shared_count : 0;
			for (i = 0; i < shared_count; ++i) {
				shared[i] = FUNC4(fobj->shared[i]);
				if (!FUNC0(shared[i]))
					break;
			}
		}

		if (i != shared_count || FUNC8(&obj->seq, seq)) {
			while (i--)
				FUNC1(shared[i]);
			FUNC1(fence_excl);
			goto unlock;
		}

		ret = 0;
unlock:
		FUNC6();
	} while (ret);

	if (pfence_excl)
		*pfence_excl = fence_excl;
	else if (fence_excl)
		shared[shared_count++] = fence_excl;

	if (!shared_count) {
		FUNC2(shared);
		shared = NULL;
	}

	*pshared_count = shared_count;
	*pshared = shared;
	return ret;
}