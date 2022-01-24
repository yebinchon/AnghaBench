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
struct radeon_sync {int dummy; } ;
struct radeon_fence {struct radeon_device* rdev; } ;
struct radeon_device {int dummy; } ;
struct dma_resv_list {unsigned int shared_count; int /*<<< orphan*/ * shared; } ;
struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dma_fence*,int) ; 
 struct dma_fence* FUNC1 (struct dma_resv*) ; 
 struct dma_resv_list* FUNC2 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_resv*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_sync*,struct radeon_fence*) ; 
 struct dma_fence* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct radeon_fence* FUNC6 (struct dma_fence*) ; 

int FUNC7(struct radeon_device *rdev,
		     struct radeon_sync *sync,
		     struct dma_resv *resv,
		     bool shared)
{
	struct dma_resv_list *flist;
	struct dma_fence *f;
	struct radeon_fence *fence;
	unsigned i;
	int r = 0;

	/* always sync to the exclusive fence */
	f = FUNC1(resv);
	fence = f ? FUNC6(f) : NULL;
	if (fence && fence->rdev == rdev)
		FUNC4(sync, fence);
	else if (f)
		r = FUNC0(f, true);

	flist = FUNC2(resv);
	if (shared || !flist || r)
		return r;

	for (i = 0; i < flist->shared_count; ++i) {
		f = FUNC5(flist->shared[i],
					      FUNC3(resv));
		fence = FUNC6(f);
		if (fence && fence->rdev == rdev)
			FUNC4(sync, fence);
		else
			r = FUNC0(f, true);

		if (r)
			break;
	}
	return r;
}