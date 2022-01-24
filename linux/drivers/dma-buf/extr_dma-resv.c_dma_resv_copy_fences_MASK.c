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
struct dma_resv_list {unsigned int shared_count; int /*<<< orphan*/ * shared; int /*<<< orphan*/  flags; } ;
struct dma_resv {int /*<<< orphan*/  seq; int /*<<< orphan*/  fence; int /*<<< orphan*/  fence_excl; } ;
struct dma_fence {unsigned int shared_count; int /*<<< orphan*/ * shared; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dma_resv_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_resv_list*) ; 
 struct dma_resv_list* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct dma_resv_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_resv_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC6 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC7 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_resv_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_resv_list*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct dma_resv_list*) ; 
 struct dma_resv_list* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

int FUNC20(struct dma_resv *dst, struct dma_resv *src)
{
	struct dma_resv_list *src_list, *dst_list;
	struct dma_fence *old, *new;
	unsigned i;

	FUNC5(dst);

	FUNC15();
	src_list = FUNC14(src->fence);

retry:
	if (src_list) {
		unsigned shared_count = src_list->shared_count;

		FUNC16();

		dst_list = FUNC8(shared_count);
		if (!dst_list)
			return -ENOMEM;

		FUNC15();
		src_list = FUNC14(src->fence);
		if (!src_list || src_list->shared_count > shared_count) {
			FUNC10(dst_list);
			goto retry;
		}

		dst_list->shared_count = 0;
		for (i = 0; i < src_list->shared_count; ++i) {
			struct dma_fence *fence;

			fence = FUNC14(src_list->shared[i]);
			if (FUNC17(DMA_FENCE_FLAG_SIGNALED_BIT,
				     &fence->flags))
				continue;

			if (!FUNC1(fence)) {
				FUNC9(dst_list);
				src_list = FUNC14(src->fence);
				goto retry;
			}

			if (FUNC3(fence)) {
				FUNC4(fence);
				continue;
			}

			FUNC13(dst_list->shared[dst_list->shared_count++], fence);
		}
	} else {
		dst_list = NULL;
	}

	new = FUNC2(&src->fence_excl);
	FUNC16();

	src_list = FUNC7(dst);
	old = FUNC6(dst);

	FUNC11();
	FUNC18(&dst->seq);
	/* write_seqcount_begin provides the necessary memory barrier */
	FUNC0(dst->fence_excl, new);
	FUNC0(dst->fence, dst_list);
	FUNC19(&dst->seq);
	FUNC12();

	FUNC9(src_list);
	FUNC4(old);

	return 0;
}