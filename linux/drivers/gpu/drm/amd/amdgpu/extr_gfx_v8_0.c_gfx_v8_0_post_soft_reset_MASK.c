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
struct TYPE_6__ {int num_compute_rings; TYPE_2__ rlc; struct amdgpu_ring* compute_ring; scalar_t__ grbm_soft_reset; int /*<<< orphan*/  srbm_soft_reset; } ;
struct amdgpu_device {TYPE_3__ gfx; int /*<<< orphan*/  srbm_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* start ) (struct amdgpu_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GRBM_SOFT_RESET ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOFT_RESET_CP ; 
 int /*<<< orphan*/  SOFT_RESET_CPC ; 
 int /*<<< orphan*/  SOFT_RESET_CPF ; 
 int /*<<< orphan*/  SOFT_RESET_CPG ; 
 int /*<<< orphan*/  SOFT_RESET_GFX ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	u32 grbm_soft_reset = 0;

	if ((!adev->gfx.grbm_soft_reset) &&
	    (!adev->gfx.srbm_soft_reset))
		return 0;

	grbm_soft_reset = adev->gfx.grbm_soft_reset;

	if (FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CP) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPF) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPC) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CPG)) {
		int i;

		for (i = 0; i < adev->gfx.num_compute_rings; i++) {
			struct amdgpu_ring *ring = &adev->gfx.compute_ring[i];

			FUNC6(&adev->srbm_mutex);
			FUNC9(adev, ring->me, ring->pipe, ring->queue, 0);
			FUNC3(adev, 2);
			FUNC9(adev, 0, 0, 0, 0);
			FUNC7(&adev->srbm_mutex);
		}
		FUNC5(adev);
		FUNC4(adev);
	}

	if (FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_CP) ||
	    FUNC0(grbm_soft_reset, GRBM_SOFT_RESET, SOFT_RESET_GFX))
		FUNC1(adev);

	FUNC2(adev);

	adev->gfx.rlc.funcs->start(adev);

	return 0;
}