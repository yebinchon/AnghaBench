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
#define  CHIP_CARRIZO 135 
#define  CHIP_FIJI 134 
#define  CHIP_POLARIS10 133 
#define  CHIP_POLARIS11 132 
#define  CHIP_POLARIS12 131 
#define  CHIP_STONEY 130 
#define  CHIP_TONGA 129 
#define  CHIP_VEGAM 128 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cz_golden_settings_a11 ; 
 int /*<<< orphan*/  cz_mgcg_cgcg_init ; 
 int /*<<< orphan*/  fiji_mgcg_cgcg_init ; 
 int /*<<< orphan*/  golden_settings_fiji_a10 ; 
 int /*<<< orphan*/  golden_settings_polaris10_a11 ; 
 int /*<<< orphan*/  golden_settings_polaris11_a11 ; 
 int /*<<< orphan*/  golden_settings_tonga_a11 ; 
 int /*<<< orphan*/  stoney_golden_settings_a11 ; 
 int /*<<< orphan*/  stoney_mgcg_cgcg_init ; 
 int /*<<< orphan*/  tonga_mgcg_cgcg_init ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	switch (adev->asic_type) {
	case CHIP_FIJI:
		FUNC1(adev,
							fiji_mgcg_cgcg_init,
							FUNC0(fiji_mgcg_cgcg_init));
		FUNC1(adev,
							golden_settings_fiji_a10,
							FUNC0(golden_settings_fiji_a10));
		break;
	case CHIP_TONGA:
		FUNC1(adev,
							tonga_mgcg_cgcg_init,
							FUNC0(tonga_mgcg_cgcg_init));
		FUNC1(adev,
							golden_settings_tonga_a11,
							FUNC0(golden_settings_tonga_a11));
		break;
	case CHIP_POLARIS11:
	case CHIP_POLARIS12:
	case CHIP_VEGAM:
		FUNC1(adev,
							golden_settings_polaris11_a11,
							FUNC0(golden_settings_polaris11_a11));
		break;
	case CHIP_POLARIS10:
		FUNC1(adev,
							golden_settings_polaris10_a11,
							FUNC0(golden_settings_polaris10_a11));
		break;
	case CHIP_CARRIZO:
		FUNC1(adev,
							cz_mgcg_cgcg_init,
							FUNC0(cz_mgcg_cgcg_init));
		FUNC1(adev,
							cz_golden_settings_a11,
							FUNC0(cz_golden_settings_a11));
		break;
	case CHIP_STONEY:
		FUNC1(adev,
							stoney_mgcg_cgcg_init,
							FUNC0(stoney_mgcg_cgcg_init));
		FUNC1(adev,
							stoney_golden_settings_a11,
							FUNC0(stoney_golden_settings_a11));
		break;
	default:
		break;
	}
}