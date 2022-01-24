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
struct dma_resv_list {unsigned int shared_count; unsigned int shared_max; int /*<<< orphan*/ * shared; } ;
struct dma_resv {int /*<<< orphan*/  seq; } ;
struct dma_fence {scalar_t__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 scalar_t__ FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC6 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct dma_fence* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct dma_resv *obj, struct dma_fence *fence)
{
	struct dma_resv_list *fobj;
	struct dma_fence *old;
	unsigned int i, count;

	FUNC2(fence);

	FUNC5(obj);

	fobj = FUNC6(obj);
	count = fobj->shared_count;

	FUNC8();
	FUNC12(&obj->seq);

	for (i = 0; i < count; ++i) {

		old = FUNC10(fobj->shared[i],
						FUNC7(obj));
		if (old->context == fence->context ||
		    FUNC3(old))
			goto replace;
	}

	FUNC0(fobj->shared_count >= fobj->shared_max);
	old = NULL;
	count++;

replace:
	FUNC1(fobj->shared[i], fence);
	/* pointer update must be visible before we extend the shared_count */
	FUNC11(fobj->shared_count, count);

	FUNC13(&obj->seq);
	FUNC9();
	FUNC4(old);
}