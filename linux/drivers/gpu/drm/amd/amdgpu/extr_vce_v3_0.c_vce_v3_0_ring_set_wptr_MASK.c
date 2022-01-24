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
struct amdgpu_ring {int me; int /*<<< orphan*/  wptr; struct amdgpu_device* adev; } ;
struct TYPE_2__ {scalar_t__ harvest_config; } ;
struct amdgpu_device {int /*<<< orphan*/  grbm_idx_mutex; TYPE_1__ vce; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_VCE_HARVEST_VCE0 ; 
 scalar_t__ AMDGPU_VCE_HARVEST_VCE1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX_DEFAULT ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR2 ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR3 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	FUNC3(&adev->grbm_idx_mutex);
	if (adev->vce.harvest_config == 0 ||
		adev->vce.harvest_config == AMDGPU_VCE_HARVEST_VCE1)
		FUNC1(mmGRBM_GFX_INDEX, FUNC0(0));
	else if (adev->vce.harvest_config == AMDGPU_VCE_HARVEST_VCE0)
		FUNC1(mmGRBM_GFX_INDEX, FUNC0(1));

	if (ring->me == 0)
		FUNC1(mmVCE_RB_WPTR, FUNC2(ring->wptr));
	else if (ring->me == 1)
		FUNC1(mmVCE_RB_WPTR2, FUNC2(ring->wptr));
	else
		FUNC1(mmVCE_RB_WPTR3, FUNC2(ring->wptr));

	FUNC1(mmGRBM_GFX_INDEX, mmGRBM_GFX_INDEX_DEFAULT);
	FUNC4(&adev->grbm_idx_mutex);
}