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
typedef  int /*<<< orphan*/  u32 ;
struct timespec {int dummy; } ;
struct etnaviv_gpu {int /*<<< orphan*/  fence_idr; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 struct dma_fence* FUNC0 (struct dma_fence*) ; 
 scalar_t__ FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int FUNC3 (struct dma_fence*,int,unsigned long) ; 
 unsigned long FUNC4 (struct timespec*) ; 
 struct dma_fence* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(struct etnaviv_gpu *gpu,
	u32 id, struct timespec *timeout)
{
	struct dma_fence *fence;
	int ret;

	/*
	 * Look up the fence and take a reference. We might still find a fence
	 * whose refcount has already dropped to zero. dma_fence_get_rcu
	 * pretends we didn't find a fence in that case.
	 */
	FUNC6();
	fence = FUNC5(&gpu->fence_idr, id);
	if (fence)
		fence = FUNC0(fence);
	FUNC7();

	if (!fence)
		return 0;

	if (!timeout) {
		/* No timeout was requested: just test for completion */
		ret = FUNC1(fence) ? 0 : -EBUSY;
	} else {
		unsigned long remaining = FUNC4(timeout);

		ret = FUNC3(fence, true, remaining);
		if (ret == 0)
			ret = -ETIMEDOUT;
		else if (ret != -ERESTARTSYS)
			ret = 0;

	}

	FUNC2(fence);
	return ret;
}