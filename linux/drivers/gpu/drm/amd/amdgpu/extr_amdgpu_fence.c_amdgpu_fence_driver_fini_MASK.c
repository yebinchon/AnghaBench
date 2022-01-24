#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int initialized; unsigned int num_fences_mask; int /*<<< orphan*/ * fences; int /*<<< orphan*/  fallback_timer; int /*<<< orphan*/  irq_type; int /*<<< orphan*/  irq_src; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; int /*<<< orphan*/  sched; } ;
struct amdgpu_device {struct amdgpu_ring** rings; } ;

/* Variables and functions */
 unsigned int AMDGPU_MAX_RINGS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_ring*) ; 
 int FUNC1 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct amdgpu_device *adev)
{
	unsigned i, j;
	int r;

	for (i = 0; i < AMDGPU_MAX_RINGS; i++) {
		struct amdgpu_ring *ring = adev->rings[i];

		if (!ring || !ring->fence_drv.initialized)
			continue;
		r = FUNC1(ring);
		if (r) {
			/* no need to trigger GPU reset as we are unloading */
			FUNC0(ring);
		}
		FUNC2(adev, ring->fence_drv.irq_src,
			       ring->fence_drv.irq_type);
		FUNC5(&ring->sched);
		FUNC3(&ring->fence_drv.fallback_timer);
		for (j = 0; j <= ring->fence_drv.num_fences_mask; ++j)
			FUNC4(ring->fence_drv.fences[j]);
		FUNC6(ring->fence_drv.fences);
		ring->fence_drv.fences = NULL;
		ring->fence_drv.initialized = false;
	}
}