#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct amdgpu_device {int asic_type; int /*<<< orphan*/  grbm_idx_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CHIP_CARRIZO 136 
#define  CHIP_FIJI 135 
#define  CHIP_POLARIS10 134 
#define  CHIP_POLARIS11 133 
#define  CHIP_POLARIS12 132 
#define  CHIP_STONEY 131 
#define  CHIP_TONGA 130 
#define  CHIP_TOPAZ 129 
#define  CHIP_VEGAM 128 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  cz_mgcg_cgcg_init ; 
 int /*<<< orphan*/  fiji_mgcg_cgcg_init ; 
 int /*<<< orphan*/  iceland_mgcg_cgcg_init ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stoney_mgcg_cgcg_init ; 
 int /*<<< orphan*/  tonga_mgcg_cgcg_init ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	/* Some of the registers might be dependent on GRBM_GFX_INDEX */
	FUNC3(&adev->grbm_idx_mutex);

	if (FUNC2(adev)) {
		FUNC5(adev);
		FUNC4(&adev->grbm_idx_mutex);
		return;
	}

	switch (adev->asic_type) {
	case CHIP_TOPAZ:
		FUNC1(adev,
							iceland_mgcg_cgcg_init,
							FUNC0(iceland_mgcg_cgcg_init));
		break;
	case CHIP_FIJI:
		FUNC1(adev,
							fiji_mgcg_cgcg_init,
							FUNC0(fiji_mgcg_cgcg_init));
		break;
	case CHIP_TONGA:
		FUNC1(adev,
							tonga_mgcg_cgcg_init,
							FUNC0(tonga_mgcg_cgcg_init));
		break;
	case CHIP_CARRIZO:
		FUNC1(adev,
							cz_mgcg_cgcg_init,
							FUNC0(cz_mgcg_cgcg_init));
		break;
	case CHIP_STONEY:
		FUNC1(adev,
							stoney_mgcg_cgcg_init,
							FUNC0(stoney_mgcg_cgcg_init));
		break;
	case CHIP_POLARIS10:
	case CHIP_POLARIS11:
	case CHIP_POLARIS12:
	case CHIP_VEGAM:
	default:
		break;
	}
	FUNC4(&adev->grbm_idx_mutex);
}