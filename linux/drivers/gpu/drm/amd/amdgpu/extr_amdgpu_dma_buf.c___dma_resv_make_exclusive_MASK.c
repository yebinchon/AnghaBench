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
struct dma_fence_array {struct dma_fence base; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dma_fence_array* FUNC0 (unsigned int,struct dma_fence**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_resv*,struct dma_fence*) ; 
 int FUNC4 (struct dma_resv*,int /*<<< orphan*/ *,unsigned int*,struct dma_fence***) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence**) ; 

__attribute__((used)) static int
FUNC7(struct dma_resv *obj)
{
	struct dma_fence **fences;
	unsigned int count;
	int r;

	if (!FUNC5(obj)) /* no shared fences to convert */
		return 0;

	r = FUNC4(obj, NULL, &count, &fences);
	if (r)
		return r;

	if (count == 0) {
		/* Now that was unexpected. */
	} else if (count == 1) {
		FUNC3(obj, fences[0]);
		FUNC2(fences[0]);
		FUNC6(fences);
	} else {
		struct dma_fence_array *array;

		array = FUNC0(count, fences,
					       FUNC1(1), 0,
					       false);
		if (!array)
			goto err_fences_put;

		FUNC3(obj, &array->base);
		FUNC2(&array->base);
	}

	return 0;

err_fences_put:
	while (count--)
		FUNC2(fences[count]);
	FUNC6(fences);
	return -ENOMEM;
}