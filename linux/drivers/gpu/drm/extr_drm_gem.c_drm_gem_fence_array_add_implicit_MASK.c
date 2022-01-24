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
struct xarray {int dummy; } ;
struct drm_gem_object {int /*<<< orphan*/  resv; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 struct dma_fence* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*,struct dma_fence***) ; 
 int FUNC3 (struct xarray*,struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence**) ; 

int FUNC5(struct xarray *fence_array,
				     struct drm_gem_object *obj,
				     bool write)
{
	int ret;
	struct dma_fence **fences;
	unsigned int i, fence_count;

	if (!write) {
		struct dma_fence *fence =
			FUNC1(obj->resv);

		return FUNC3(fence_array, fence);
	}

	ret = FUNC2(obj->resv, NULL,
						&fence_count, &fences);
	if (ret || !fence_count)
		return ret;

	for (i = 0; i < fence_count; i++) {
		ret = FUNC3(fence_array, fences[i]);
		if (ret)
			break;
	}

	for (; i < fence_count; i++)
		FUNC0(fences[i]);
	FUNC4(fences);
	return ret;
}