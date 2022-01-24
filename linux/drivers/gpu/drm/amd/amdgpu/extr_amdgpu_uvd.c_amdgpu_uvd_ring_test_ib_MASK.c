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
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;

/* Variables and functions */
 long ETIMEDOUT ; 
 long FUNC0 (struct amdgpu_ring*,int,int /*<<< orphan*/ *) ; 
 long FUNC1 (struct amdgpu_ring*,int,int,struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 long FUNC3 (struct dma_fence*,int,long) ; 

int FUNC4(struct amdgpu_ring *ring, long timeout)
{
	struct dma_fence *fence;
	long r;

	r = FUNC0(ring, 1, NULL);
	if (r)
		goto error;

	r = FUNC1(ring, 1, true, &fence);
	if (r)
		goto error;

	r = FUNC3(fence, false, timeout);
	if (r == 0)
		r = -ETIMEDOUT;
	else if (r > 0)
		r = 0;

	FUNC2(fence);

error:
	return r;
}