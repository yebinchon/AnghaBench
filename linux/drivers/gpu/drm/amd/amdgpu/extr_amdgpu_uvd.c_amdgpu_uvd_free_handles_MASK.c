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
typedef  scalar_t__ uint32_t ;
struct drm_file {int dummy; } ;
struct dma_fence {int dummy; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_4__ {int max_handles; int /*<<< orphan*/ * handles; struct drm_file** filp; TYPE_1__* inst; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct TYPE_3__ {struct amdgpu_ring ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct amdgpu_ring*,scalar_t__,int,struct dma_fence**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*,int) ; 

void FUNC6(struct amdgpu_device *adev, struct drm_file *filp)
{
	struct amdgpu_ring *ring = &adev->uvd.inst[0].ring;
	int i, r;

	for (i = 0; i < adev->uvd.max_handles; ++i) {
		uint32_t handle = FUNC2(&adev->uvd.handles[i]);

		if (handle != 0 && adev->uvd.filp[i] == filp) {
			struct dma_fence *fence;

			r = FUNC1(ring, handle, false,
						       &fence);
			if (r) {
				FUNC0("Error destroying UVD %d!\n", r);
				continue;
			}

			FUNC5(fence, false);
			FUNC4(fence);

			adev->uvd.filp[i] = NULL;
			FUNC3(&adev->uvd.handles[i], 0);
		}
	}
}