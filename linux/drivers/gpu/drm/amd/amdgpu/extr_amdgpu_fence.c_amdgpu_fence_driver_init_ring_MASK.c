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
struct TYPE_3__ {int initialized; unsigned int num_fences_mask; int /*<<< orphan*/  fences; int /*<<< orphan*/  lock; int /*<<< orphan*/  fallback_timer; int /*<<< orphan*/  last_seq; scalar_t__ sync_seq; scalar_t__ gpu_addr; int /*<<< orphan*/ * cpu_addr; } ;
struct amdgpu_ring {int /*<<< orphan*/  name; int /*<<< orphan*/  sched; struct amdgpu_device* adev; TYPE_2__* funcs; TYPE_1__ fence_drv; } ;
struct amdgpu_device {long gfx_timeout; long compute_timeout; long sdma_timeout; long video_timeout; } ;
struct TYPE_4__ {int type; } ;

/* Variables and functions */
#define  AMDGPU_RING_TYPE_COMPUTE 130 
#define  AMDGPU_RING_TYPE_GFX 129 
 int AMDGPU_RING_TYPE_KIQ ; 
#define  AMDGPU_RING_TYPE_SDMA 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  amdgpu_fence_fallback ; 
 int /*<<< orphan*/  amdgpu_job_hang_limit ; 
 int /*<<< orphan*/  amdgpu_sched_ops ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct amdgpu_ring *ring,
				  unsigned num_hw_submission)
{
	struct amdgpu_device *adev = ring->adev;
	long timeout;
	int r;

	if (!adev)
		return -EINVAL;

	/* Check that num_hw_submission is a power of two */
	if ((num_hw_submission & (num_hw_submission - 1)) != 0)
		return -EINVAL;

	ring->fence_drv.cpu_addr = NULL;
	ring->fence_drv.gpu_addr = 0;
	ring->fence_drv.sync_seq = 0;
	FUNC2(&ring->fence_drv.last_seq, 0);
	ring->fence_drv.initialized = false;

	FUNC6(&ring->fence_drv.fallback_timer, amdgpu_fence_fallback, 0);

	ring->fence_drv.num_fences_mask = num_hw_submission * 2 - 1;
	FUNC5(&ring->fence_drv.lock);
	ring->fence_drv.fences = FUNC4(num_hw_submission * 2, sizeof(void *),
					 GFP_KERNEL);
	if (!ring->fence_drv.fences)
		return -ENOMEM;

	/* No need to setup the GPU scheduler for KIQ ring */
	if (ring->funcs->type != AMDGPU_RING_TYPE_KIQ) {
		switch (ring->funcs->type) {
		case AMDGPU_RING_TYPE_GFX:
			timeout = adev->gfx_timeout;
			break;
		case AMDGPU_RING_TYPE_COMPUTE:
			/*
			 * For non-sriov case, no timeout enforce
			 * on compute ring by default. Unless user
			 * specifies a timeout for compute ring.
			 *
			 * For sriov case, always use the timeout
			 * as gfx ring
			 */
			if (!FUNC1(ring->adev))
				timeout = adev->compute_timeout;
			else
				timeout = adev->gfx_timeout;
			break;
		case AMDGPU_RING_TYPE_SDMA:
			timeout = adev->sdma_timeout;
			break;
		default:
			timeout = adev->video_timeout;
			break;
		}

		r = FUNC3(&ring->sched, &amdgpu_sched_ops,
				   num_hw_submission, amdgpu_job_hang_limit,
				   timeout, ring->name);
		if (r) {
			FUNC0("Failed to create scheduler on ring %s.\n",
				  ring->name);
			return r;
		}
	}

	return 0;
}