#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int ready; } ;
struct amdgpu_ring {TYPE_3__ sched; int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct TYPE_5__ {int num_gfx_rings; int num_compute_rings; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct TYPE_4__ {scalar_t__ load_type; } ;
struct amdgpu_device {int flags; TYPE_2__ gfx; TYPE_1__ firmware; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_FW_LOAD_DIRECT ; 
 int AMD_IS_APU ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  amdgpu_async_gfx_ring ; 
 int FUNC1 (struct amdgpu_ring*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	int r, i;
	struct amdgpu_ring *ring;

	if (!(adev->flags & AMD_IS_APU))
		FUNC6(adev, false);

	if (adev->firmware.load_type == AMDGPU_FW_LOAD_DIRECT) {
		/* legacy firmware loading */
		r = FUNC4(adev);
		if (r)
			return r;

		r = FUNC3(adev);
		if (r)
			return r;
	}

	r = FUNC8(adev);
	if (r)
		return r;

	r = FUNC7(adev);
	if (r)
		return r;

	if (!amdgpu_async_gfx_ring) {
		r = FUNC5(adev);
		if (r)
			return r;
	} else {
		r = FUNC2(adev);
		if (r)
			return r;
	}

	for (i = 0; i < adev->gfx.num_gfx_rings; i++) {
		ring = &adev->gfx.gfx_ring[i];
		FUNC0("gfx %d ring me %d pipe %d q %d\n",
			 i, ring->me, ring->pipe, ring->queue);
		r = FUNC1(ring);
		if (r) {
			ring->sched.ready = false;
			return r;
		}
	}

	for (i = 0; i < adev->gfx.num_compute_rings; i++) {
		ring = &adev->gfx.compute_ring[i];
		ring->sched.ready = true;
		FUNC0("compute ring %d mec %d pipe %d q %d\n",
			 i, ring->me, ring->pipe, ring->queue);
		r = FUNC1(ring);
		if (r)
			ring->sched.ready = false;
	}

	return 0;
}