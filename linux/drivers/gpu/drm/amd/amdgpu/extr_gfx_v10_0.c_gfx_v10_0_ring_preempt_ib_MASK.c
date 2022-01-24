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
struct amdgpu_ring {scalar_t__ trail_seq; int /*<<< orphan*/  idx; int /*<<< orphan*/ * trail_fence_cpu_addr; int /*<<< orphan*/  trail_fence_gpu_addr; struct amdgpu_device* adev; } ;
struct amdgpu_kiq {TYPE_2__* pmf; struct amdgpu_ring ring; } ;
struct TYPE_3__ {struct amdgpu_kiq kiq; } ;
struct amdgpu_device {int usec_timeout; TYPE_1__ gfx; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* kiq_unmap_queues ) (struct amdgpu_ring*,struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  unmap_queues_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PREEMPT_QUEUES_NO_UNMAP ; 
 scalar_t__ FUNC1 (struct amdgpu_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_ring*,struct amdgpu_ring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_ring *ring)
{
	int i, r = 0;
	struct amdgpu_device *adev = ring->adev;
	struct amdgpu_kiq *kiq = &adev->gfx.kiq;
	struct amdgpu_ring *kiq_ring = &kiq->ring;

	if (!kiq->pmf || !kiq->pmf->kiq_unmap_queues)
		return -EINVAL;

	if (FUNC1(kiq_ring, kiq->pmf->unmap_queues_size))
		return -ENOMEM;

	/* assert preemption condition */
	FUNC3(ring, false);

	/* assert IB preemption, emit the trailing fence */
	kiq->pmf->kiq_unmap_queues(kiq_ring, ring, PREEMPT_QUEUES_NO_UNMAP,
				   ring->trail_fence_gpu_addr,
				   ++ring->trail_seq);
	FUNC2(kiq_ring);

	/* poll the trailing fence */
	for (i = 0; i < adev->usec_timeout; i++) {
		if (ring->trail_seq ==
		    FUNC4(*(ring->trail_fence_cpu_addr)))
			break;
		FUNC6(1);
	}

	if (i >= adev->usec_timeout) {
		r = -EINVAL;
		FUNC0("ring %d failed to preempt ib\n", ring->idx);
	}

	/* deassert preemption condition */
	FUNC3(ring, true);
	return r;
}