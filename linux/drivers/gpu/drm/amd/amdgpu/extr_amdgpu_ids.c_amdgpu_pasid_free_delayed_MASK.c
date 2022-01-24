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
typedef  int /*<<< orphan*/  uint64_t ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct dma_fence_array {struct dma_fence base; } ;
struct amdgpu_pasid_cb {unsigned int pasid; int /*<<< orphan*/  cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct dma_fence*,int /*<<< orphan*/ *)) ; 
 struct dma_fence_array* FUNC3 (unsigned int,struct dma_fence**,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence*,int) ; 
 int FUNC7 (struct dma_resv*,int /*<<< orphan*/ *,unsigned int*,struct dma_fence***) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_resv*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_fence**) ; 
 struct amdgpu_pasid_cb* FUNC10 (int,int /*<<< orphan*/ ) ; 

void FUNC11(struct dma_resv *resv,
			       unsigned int pasid)
{
	struct dma_fence *fence, **fences;
	struct amdgpu_pasid_cb *cb;
	unsigned count;
	int r;

	r = FUNC7(resv, NULL, &count, &fences);
	if (r)
		goto fallback;

	if (count == 0) {
		FUNC0(pasid);
		return;
	}

	if (count == 1) {
		fence = fences[0];
		FUNC9(fences);
	} else {
		uint64_t context = FUNC4(1);
		struct dma_fence_array *array;

		array = FUNC3(count, fences, context,
					       1, false);
		if (!array) {
			FUNC9(fences);
			goto fallback;
		}
		fence = &array->base;
	}

	cb = FUNC10(sizeof(*cb), GFP_KERNEL);
	if (!cb) {
		/* Last resort when we are OOM */
		FUNC6(fence, false);
		FUNC5(fence);
		FUNC0(pasid);
	} else {
		cb->pasid = pasid;
		if (FUNC2(fence, &cb->cb,
					   amdgpu_pasid_free_cb))
			FUNC1(fence, &cb->cb);
	}

	return;

fallback:
	/* Not enough memory for the delayed delete, as last resort
	 * block for all the fences to complete.
	 */
	FUNC8(resv, true, false,
					    MAX_SCHEDULE_TIMEOUT);
	FUNC0(pasid);
}