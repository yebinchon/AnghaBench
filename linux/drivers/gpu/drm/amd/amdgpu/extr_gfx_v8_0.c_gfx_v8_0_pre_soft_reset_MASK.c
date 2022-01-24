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
typedef  scalar_t__ u32 ;
struct amdgpu_ring {int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct TYPE_6__ {int num_compute_rings; struct amdgpu_ring* compute_ring; TYPE_2__ rlc; scalar_t__ grbm_soft_reset; int /*<<< orphan*/  srbm_soft_reset; } ;
struct amdgpu_device {int /*<<< orphan*/  srbm_mutex; TYPE_3__ gfx; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GRBM_SOFT_RESET ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOFT_RESET_CP ; 
 int /*<<< orphan*/  SOFT_RESET_CPC ; 
 int /*<<< orphan*/  SOFT_RESET_CPF ; 
 int /*<<< orphan*/  SOFT_RESET_CPG ; 
 int /*<<< orphan*/  SOFT_RESET_GFX ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 grbm_soft_reset = 0;

	if ((!adev->gfx.grbm_soft_reset) &&
	    (!adev->gfx.srbm_soft_reset))
		return 0;

	grbm_soft_reset = adev->gfx.grbm_soft_reset;

	/* stop the rlc */
	adev->gfx.rlc.funcs->stop(adev);

	if (FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CP) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_GFX))
		/* Disable GFX parsing/prefetching */
		FUNC2(adev, false);

	if (FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CP) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPF) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPC) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPG)) {
		int i;

		for (i = 0; i < adev->gfx.num_compute_rings; i++) {
			struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];

			FUNC4(&adev->srbm_mutex);
			FUNC7(adev, ring->me, ring->pipe, ring->queue, 0);
			FUNC3(adev, 2);
			FUNC7(adev, 0, 0, 0, 0);
			FUNC5(&adev->srbm_mutex);
		}
		/* Disable MEC parsing/prefetching */
		FUNC1(adev, false);
	}

       return 0;
}