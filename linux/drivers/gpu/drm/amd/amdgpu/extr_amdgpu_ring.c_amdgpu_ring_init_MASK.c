#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_ring {size_t idx; int rptr_offs; int wptr_offs; int fence_offs; int trail_fence_offs; int* trail_fence_cpu_addr; int cond_exe_offs; int* cond_exe_cpu_addr; int ring_size; int buf_mask; int ptr_mask; unsigned int max_dw; int /*<<< orphan*/ * num_jobs; int /*<<< orphan*/  priority_mutex; int /*<<< orphan*/  priority; int /*<<< orphan*/  ring; int /*<<< orphan*/  gpu_addr; int /*<<< orphan*/ * ring_obj; TYPE_4__* funcs; scalar_t__ cond_exe_gpu_addr; scalar_t__ trail_fence_gpu_addr; struct amdgpu_device* adev; } ;
struct amdgpu_irq_src {int dummy; } ;
struct TYPE_7__ {int* wb; scalar_t__ gpu_addr; } ;
struct TYPE_6__ {TYPE_1__* instance; } ;
struct amdgpu_device {scalar_t__ num_rings; int /*<<< orphan*/  dev; TYPE_3__ wb; struct amdgpu_ring** rings; TYPE_2__ sdma; } ;
struct TYPE_8__ {scalar_t__ type; int extra_dw; scalar_t__ support_64bit_ptrs; } ;
struct TYPE_5__ {struct amdgpu_ring page; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_GTT ; 
 scalar_t__ AMDGPU_MAX_RINGS ; 
 scalar_t__ AMDGPU_RING_TYPE_KIQ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_SCHED_PRIORITY_MAX ; 
 int /*<<< orphan*/  DRM_SCHED_PRIORITY_NORMAL ; 
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct amdgpu_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*,struct amdgpu_ring*) ; 
 int FUNC3 (struct amdgpu_device*,int*) ; 
 int FUNC4 (struct amdgpu_ring*,int) ; 
 int FUNC5 (struct amdgpu_ring*,struct amdgpu_irq_src*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_ring*) ; 
 int amdgpu_sched_hw_submission ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (unsigned int) ; 

int FUNC12(struct amdgpu_device *adev, struct amdgpu_ring *ring,
		     unsigned max_dw, struct amdgpu_irq_src *irq_src,
		     unsigned irq_type)
{
	int r, i;
	int sched_hw_submission = amdgpu_sched_hw_submission;

	/* Set the hw submission limit higher for KIQ because
	 * it's used for a number of gfx/compute tasks by both
	 * KFD and KGD which may have outstanding fences and
	 * it doesn't really use the gpu scheduler anyway;
	 * KIQ tasks get submitted directly to the ring.
	 */
	if (ring->funcs->type == AMDGPU_RING_TYPE_KIQ)
		sched_hw_submission = FUNC9(sched_hw_submission, 256);
	else if (ring == &adev->sdma.instance[0].page)
		sched_hw_submission = 256;

	if (ring->adev == NULL) {
		if (adev->num_rings >= AMDGPU_MAX_RINGS)
			return -EINVAL;

		ring->adev = adev;
		ring->idx = adev->num_rings++;
		adev->rings[ring->idx] = ring;
		r = FUNC4(ring, sched_hw_submission);
		if (r)
			return r;
	}

	r = FUNC3(adev, &ring->rptr_offs);
	if (r) {
		FUNC8(adev->dev, "(%d) ring rptr_offs wb alloc failed\n", r);
		return r;
	}

	r = FUNC3(adev, &ring->wptr_offs);
	if (r) {
		FUNC8(adev->dev, "(%d) ring wptr_offs wb alloc failed\n", r);
		return r;
	}

	r = FUNC3(adev, &ring->fence_offs);
	if (r) {
		FUNC8(adev->dev, "(%d) ring fence_offs wb alloc failed\n", r);
		return r;
	}

	r = FUNC3(adev, &ring->trail_fence_offs);
	if (r) {
		FUNC8(adev->dev,
			"(%d) ring trail_fence_offs wb alloc failed\n", r);
		return r;
	}
	ring->trail_fence_gpu_addr =
		adev->wb.gpu_addr + (ring->trail_fence_offs * 4);
	ring->trail_fence_cpu_addr = &adev->wb.wb[ring->trail_fence_offs];

	r = FUNC3(adev, &ring->cond_exe_offs);
	if (r) {
		FUNC8(adev->dev, "(%d) ring cond_exec_polling wb alloc failed\n", r);
		return r;
	}
	ring->cond_exe_gpu_addr = adev->wb.gpu_addr + (ring->cond_exe_offs * 4);
	ring->cond_exe_cpu_addr = &adev->wb.wb[ring->cond_exe_offs];
	/* always set cond_exec_polling to CONTINUE */
	*ring->cond_exe_cpu_addr = 1;

	r = FUNC5(ring, irq_src, irq_type);
	if (r) {
		FUNC8(adev->dev, "failed initializing fences (%d).\n", r);
		return r;
	}

	ring->ring_size = FUNC11(max_dw * 4 * sched_hw_submission);

	ring->buf_mask = (ring->ring_size / 4) - 1;
	ring->ptr_mask = ring->funcs->support_64bit_ptrs ?
		0xffffffffffffffff : ring->buf_mask;
	/* Allocate ring buffer */
	if (ring->ring_obj == NULL) {
		r = FUNC1(adev, ring->ring_size + ring->funcs->extra_dw, PAGE_SIZE,
					    AMDGPU_GEM_DOMAIN_GTT,
					    &ring->ring_obj,
					    &ring->gpu_addr,
					    (void **)&ring->ring);
		if (r) {
			FUNC8(adev->dev, "(%d) ring create failed\n", r);
			return r;
		}
		FUNC6(ring);
	}

	ring->max_dw = max_dw;
	ring->priority = DRM_SCHED_PRIORITY_NORMAL;
	FUNC10(&ring->priority_mutex);

	for (i = 0; i < DRM_SCHED_PRIORITY_MAX; ++i)
		FUNC7(&ring->num_jobs[i], 0);

	if (FUNC2(adev, ring)) {
		FUNC0("Failed to register debugfs file for rings !\n");
	}

	return 0;
}