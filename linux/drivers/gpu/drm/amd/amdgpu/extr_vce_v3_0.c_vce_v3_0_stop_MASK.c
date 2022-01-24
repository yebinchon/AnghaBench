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
struct TYPE_2__ {int harvest_config; } ;
struct amdgpu_device {scalar_t__ asic_type; int /*<<< orphan*/  grbm_idx_mutex; TYPE_1__ vce; } ;

/* Variables and functions */
 scalar_t__ CHIP_STONEY ; 
 int /*<<< orphan*/  CLK_EN ; 
 int /*<<< orphan*/  ECPU_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  VCE_SOFT_RESET ; 
 int /*<<< orphan*/  VCE_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX_DEFAULT ; 
 int /*<<< orphan*/  mmVCE_STATUS ; 
 int /*<<< orphan*/  mmVCE_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev)
{
	int idx;

	FUNC4(&adev->grbm_idx_mutex);
	for (idx = 0; idx < 2; ++idx) {
		if (adev->vce.harvest_config & (1 << idx))
			continue;

		FUNC1(mmGRBM_GFX_INDEX, FUNC0(idx));

		if (adev->asic_type >= CHIP_STONEY)
			FUNC3(mmVCE_VCPU_CNTL, 0, ~0x200001);
		else
			FUNC2(VCE_VCPU_CNTL, CLK_EN, 0);

		/* hold on ECPU */
		FUNC2(VCE_SOFT_RESET, ECPU_SOFT_RESET, 1);

		/* clear VCE STATUS */
		FUNC1(mmVCE_STATUS, 0);
	}

	FUNC1(mmGRBM_GFX_INDEX, mmGRBM_GFX_INDEX_DEFAULT);
	FUNC5(&adev->grbm_idx_mutex);

	return 0;
}