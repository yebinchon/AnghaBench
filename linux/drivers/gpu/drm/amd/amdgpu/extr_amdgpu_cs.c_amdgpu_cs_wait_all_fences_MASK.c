#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int status; } ;
struct TYPE_3__ {unsigned int fence_count; int /*<<< orphan*/  timeout_ns; } ;
union drm_amdgpu_wait_fences {TYPE_2__ out; TYPE_1__ in; } ;
typedef  unsigned int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_amdgpu_fence {int dummy; } ;
struct dma_fence {int error; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 int FUNC1 (struct dma_fence*) ; 
 struct dma_fence* FUNC2 (struct amdgpu_device*,struct drm_file*,struct drm_amdgpu_fence*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 long FUNC5 (struct dma_fence*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (union drm_amdgpu_wait_fences*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev,
				     struct drm_file *filp,
				     union drm_amdgpu_wait_fences *wait,
				     struct drm_amdgpu_fence *fences)
{
	uint32_t fence_count = wait->in.fence_count;
	unsigned int i;
	long r = 1;

	for (i = 0; i < fence_count; i++) {
		struct dma_fence *fence;
		unsigned long timeout = FUNC3(wait->in.timeout_ns);

		fence = FUNC2(adev, filp, &fences[i]);
		if (FUNC0(fence))
			return FUNC1(fence);
		else if (!fence)
			continue;

		r = FUNC5(fence, true, timeout);
		FUNC4(fence);
		if (r < 0)
			return r;

		if (r == 0)
			break;

		if (fence->error)
			return fence->error;
	}

	FUNC6(wait, 0, sizeof(*wait));
	wait->out.status = (r > 0);

	return 0;
}