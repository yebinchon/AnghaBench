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
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_sync {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 void* AMDGPU_FENCE_OWNER_KFD ; 
 void* AMDGPU_FENCE_OWNER_UNDEFINED ; 
 void* AMDGPU_FENCE_OWNER_VM ; 
 int EINVAL ; 
 int FUNC0 (struct amdgpu_device*,struct amdgpu_sync*,struct dma_fence*,int) ; 
 void* FUNC1 (struct dma_fence*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*,struct dma_fence*) ; 
 struct dma_fence* FUNC3 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC4 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_resv*) ; 
 struct dma_fence* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct amdgpu_device *adev,
		     struct amdgpu_sync *sync,
		     struct dma_resv *resv,
		     void *owner, bool explicit_sync)
{
	struct dma_resv_list *flist;
	struct dma_fence *f;
	void *fence_owner;
	unsigned i;
	int r = 0;

	if (resv == NULL)
		return -EINVAL;

	/* always sync to the exclusive fence */
	f = FUNC3(resv);
	r = FUNC0(adev, sync, f, false);

	flist = FUNC4(resv);
	if (!flist || r)
		return r;

	for (i = 0; i < flist->shared_count; ++i) {
		f = FUNC6(flist->shared[i],
					      FUNC5(resv));
		/* We only want to trigger KFD eviction fences on
		 * evict or move jobs. Skip KFD fences otherwise.
		 */
		fence_owner = FUNC1(f);
		if (fence_owner == AMDGPU_FENCE_OWNER_KFD &&
		    owner != AMDGPU_FENCE_OWNER_UNDEFINED)
			continue;

		if (FUNC2(adev, f)) {
			/* VM updates are only interesting
			 * for other VM updates and moves.
			 */
			if ((owner != AMDGPU_FENCE_OWNER_UNDEFINED) &&
			    (fence_owner != AMDGPU_FENCE_OWNER_UNDEFINED) &&
			    ((owner == AMDGPU_FENCE_OWNER_VM) !=
			     (fence_owner == AMDGPU_FENCE_OWNER_VM)))
				continue;

			/* Ignore fence from the same owner and explicit one as
			 * long as it isn't undefined.
			 */
			if (owner != AMDGPU_FENCE_OWNER_UNDEFINED &&
			    (fence_owner == owner || explicit_sync))
				continue;
		}

		r = FUNC0(adev, sync, f, false);
		if (r)
			break;
	}
	return r;
}