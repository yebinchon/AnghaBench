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
struct amdgpu_device {int asic_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
#define  CHIP_FIJI 129 
#define  CHIP_TONGA 128 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xgpu_fiji_golden_common_all ; 
 int /*<<< orphan*/  xgpu_fiji_golden_settings_a10 ; 
 int /*<<< orphan*/  xgpu_fiji_mgcg_cgcg_init ; 
 int /*<<< orphan*/  xgpu_tonga_golden_common_all ; 
 int /*<<< orphan*/  xgpu_tonga_golden_settings_a11 ; 
 int /*<<< orphan*/  xgpu_tonga_mgcg_cgcg_init ; 

void FUNC3(struct amdgpu_device *adev)
{
	switch (adev->asic_type) {
	case CHIP_FIJI:
		FUNC2(adev,
							xgpu_fiji_mgcg_cgcg_init,
							FUNC0(
								xgpu_fiji_mgcg_cgcg_init));
		FUNC2(adev,
							xgpu_fiji_golden_settings_a10,
							FUNC0(
								xgpu_fiji_golden_settings_a10));
		FUNC2(adev,
							xgpu_fiji_golden_common_all,
							FUNC0(
								xgpu_fiji_golden_common_all));
		break;
	case CHIP_TONGA:
		FUNC2(adev,
							xgpu_tonga_mgcg_cgcg_init,
							FUNC0(
								xgpu_tonga_mgcg_cgcg_init));
		FUNC2(adev,
							xgpu_tonga_golden_settings_a11,
							FUNC0(
								xgpu_tonga_golden_settings_a11));
		FUNC2(adev,
							xgpu_tonga_golden_common_all,
							FUNC0(
								xgpu_tonga_golden_common_all));
		break;
	default:
		FUNC1("Doesn't support chip type.\n");
		break;
	}
}