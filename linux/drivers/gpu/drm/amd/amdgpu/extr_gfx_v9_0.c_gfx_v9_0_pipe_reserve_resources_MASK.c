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
struct amdgpu_ring {int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct TYPE_2__ {int num_gfx_rings; int num_compute_rings; int /*<<< orphan*/  pipe_reserve_mutex; int /*<<< orphan*/  pipe_reserve_bitmap; struct amdgpu_ring* compute_ring; struct amdgpu_ring* gfx_ring; } ;
struct amdgpu_device {TYPE_1__ gfx; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_MAX_COMPUTE_QUEUES ; 
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_ring*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct amdgpu_device *adev,
					    struct amdgpu_ring *ring,
					    bool acquire)
{
	int i, pipe;
	bool reserve;
	struct amdgpu_ring *iring;

	FUNC4(&adev->gfx.pipe_reserve_mutex);
	pipe = FUNC0(adev, ring->me, ring->pipe, 0);
	if (acquire)
		FUNC6(pipe, adev->gfx.pipe_reserve_bitmap);
	else
		FUNC2(pipe, adev->gfx.pipe_reserve_bitmap);

	if (!FUNC1(adev->gfx.pipe_reserve_bitmap, AMDGPU_MAX_COMPUTE_QUEUES)) {
		/* Clear all reservations - everyone reacquires all resources */
		for (i = 0; i < adev->gfx.num_gfx_rings; ++i)
			FUNC3(&adev->gfx.gfx_ring[i],
						       true);

		for (i = 0; i < adev->gfx.num_compute_rings; ++i)
			FUNC3(&adev->gfx.compute_ring[i],
						       true);
	} else {
		/* Lower all pipes without a current reservation */
		for (i = 0; i < adev->gfx.num_gfx_rings; ++i) {
			iring = &adev->gfx.gfx_ring[i];
			pipe = FUNC0(adev,
							   iring->me,
							   iring->pipe,
							   0);
			reserve = FUNC7(pipe, adev->gfx.pipe_reserve_bitmap);
			FUNC3(iring, reserve);
		}

		for (i = 0; i < adev->gfx.num_compute_rings; ++i) {
			iring = &adev->gfx.compute_ring[i];
			pipe = FUNC0(adev,
							   iring->me,
							   iring->pipe,
							   0);
			reserve = FUNC7(pipe, adev->gfx.pipe_reserve_bitmap);
			FUNC3(iring, reserve);
		}
	}

	FUNC5(&adev->gfx.pipe_reserve_mutex);
}