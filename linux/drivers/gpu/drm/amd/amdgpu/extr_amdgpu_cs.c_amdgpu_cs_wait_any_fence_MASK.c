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
struct TYPE_4__ {int status; unsigned int first_signaled; } ;
struct TYPE_3__ {unsigned int fence_count; int /*<<< orphan*/  timeout_ns; } ;
union drm_amdgpu_wait_fences {TYPE_2__ out; TYPE_1__ in; } ;
typedef  unsigned int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_amdgpu_fence {int dummy; } ;
struct dma_fence {long error; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct dma_fence*) ; 
 long FUNC1 (struct dma_fence*) ; 
 struct dma_fence* FUNC2 (struct amdgpu_device*,struct drm_file*,struct drm_amdgpu_fence*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 long FUNC5 (struct dma_fence**,unsigned int,int,unsigned long,unsigned int*) ; 
 struct dma_fence** FUNC6 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC8 (union drm_amdgpu_wait_fences*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev,
				    struct drm_file *filp,
				    union drm_amdgpu_wait_fences *wait,
				    struct drm_amdgpu_fence *fences)
{
	unsigned long timeout = FUNC3(wait->in.timeout_ns);
	uint32_t fence_count = wait->in.fence_count;
	uint32_t first = ~0;
	struct dma_fence **array;
	unsigned int i;
	long r;

	/* Prepare the fence array */
	array = FUNC6(fence_count, sizeof(struct dma_fence *), GFP_KERNEL);

	if (array == NULL)
		return -ENOMEM;

	for (i = 0; i < fence_count; i++) {
		struct dma_fence *fence;

		fence = FUNC2(adev, filp, &fences[i]);
		if (FUNC0(fence)) {
			r = FUNC1(fence);
			goto err_free_fence_array;
		} else if (fence) {
			array[i] = fence;
		} else { /* NULL, the fence has been already signaled */
			r = 1;
			first = i;
			goto out;
		}
	}

	r = FUNC5(array, fence_count, true, timeout,
				       &first);
	if (r < 0)
		goto err_free_fence_array;

out:
	FUNC8(wait, 0, sizeof(*wait));
	wait->out.status = (r > 0);
	wait->out.first_signaled = first;

	if (first < fence_count && array[first])
		r = array[first]->error;
	else
		r = 0;

err_free_fence_array:
	for (i = 0; i < fence_count; i++)
		FUNC4(array[i]);
	FUNC7(array);

	return r;
}