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
struct amdgpu_device {int asic_type; TYPE_1__* pdev; } ;
struct TYPE_2__ {int revision; int subsystem_device; int subsystem_vendor; } ;

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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cz_golden_common_all ; 
 int /*<<< orphan*/  cz_golden_settings_a11 ; 
 int /*<<< orphan*/  cz_mgcg_cgcg_init ; 
 int /*<<< orphan*/  fiji_golden_common_all ; 
 int /*<<< orphan*/  fiji_mgcg_cgcg_init ; 
 int /*<<< orphan*/  golden_settings_fiji_a10 ; 
 int /*<<< orphan*/  golden_settings_iceland_a11 ; 
 int /*<<< orphan*/  golden_settings_polaris10_a11 ; 
 int /*<<< orphan*/  golden_settings_polaris11_a11 ; 
 int /*<<< orphan*/  golden_settings_tonga_a11 ; 
 int /*<<< orphan*/  golden_settings_vegam_a11 ; 
 int /*<<< orphan*/  iceland_golden_common_all ; 
 int /*<<< orphan*/  iceland_mgcg_cgcg_init ; 
 int /*<<< orphan*/  ixCG_ACLK_CNTL ; 
 int /*<<< orphan*/  polaris10_golden_common_all ; 
 int /*<<< orphan*/  polaris11_golden_common_all ; 
 int /*<<< orphan*/  stoney_golden_common_all ; 
 int /*<<< orphan*/  stoney_golden_settings_a11 ; 
 int /*<<< orphan*/  stoney_mgcg_cgcg_init ; 
 int /*<<< orphan*/  tonga_golden_common_all ; 
 int /*<<< orphan*/  tonga_mgcg_cgcg_init ; 
 int /*<<< orphan*/  vegam_golden_common_all ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	switch (adev->asic_type) {
	case CHIP_TOPAZ:
		FUNC3(adev,
							iceland_mgcg_cgcg_init,
							FUNC0(iceland_mgcg_cgcg_init));
		FUNC3(adev,
							golden_settings_iceland_a11,
							FUNC0(golden_settings_iceland_a11));
		FUNC3(adev,
							iceland_golden_common_all,
							FUNC0(iceland_golden_common_all));
		break;
	case CHIP_FIJI:
		FUNC3(adev,
							fiji_mgcg_cgcg_init,
							FUNC0(fiji_mgcg_cgcg_init));
		FUNC3(adev,
							golden_settings_fiji_a10,
							FUNC0(golden_settings_fiji_a10));
		FUNC3(adev,
							fiji_golden_common_all,
							FUNC0(fiji_golden_common_all));
		break;

	case CHIP_TONGA:
		FUNC3(adev,
							tonga_mgcg_cgcg_init,
							FUNC0(tonga_mgcg_cgcg_init));
		FUNC3(adev,
							golden_settings_tonga_a11,
							FUNC0(golden_settings_tonga_a11));
		FUNC3(adev,
							tonga_golden_common_all,
							FUNC0(tonga_golden_common_all));
		break;
	case CHIP_VEGAM:
		FUNC3(adev,
							golden_settings_vegam_a11,
							FUNC0(golden_settings_vegam_a11));
		FUNC3(adev,
							vegam_golden_common_all,
							FUNC0(vegam_golden_common_all));
		break;
	case CHIP_POLARIS11:
	case CHIP_POLARIS12:
		FUNC3(adev,
							golden_settings_polaris11_a11,
							FUNC0(golden_settings_polaris11_a11));
		FUNC3(adev,
							polaris11_golden_common_all,
							FUNC0(polaris11_golden_common_all));
		break;
	case CHIP_POLARIS10:
		FUNC3(adev,
							golden_settings_polaris10_a11,
							FUNC0(golden_settings_polaris10_a11));
		FUNC3(adev,
							polaris10_golden_common_all,
							FUNC0(polaris10_golden_common_all));
		FUNC1(ixCG_ACLK_CNTL, 0x0000001C);
		if (adev->pdev->revision == 0xc7 &&
		    ((adev->pdev->subsystem_device == 0xb37 && adev->pdev->subsystem_vendor == 0x1002) ||
		     (adev->pdev->subsystem_device == 0x4a8 && adev->pdev->subsystem_vendor == 0x1043) ||
		     (adev->pdev->subsystem_device == 0x9480 && adev->pdev->subsystem_vendor == 0x1682))) {
			FUNC2(adev, 0x10, 0x96, 0x1E, 0xDD);
			FUNC2(adev, 0x10, 0x96, 0x1F, 0xD0);
		}
		break;
	case CHIP_CARRIZO:
		FUNC3(adev,
							cz_mgcg_cgcg_init,
							FUNC0(cz_mgcg_cgcg_init));
		FUNC3(adev,
							cz_golden_settings_a11,
							FUNC0(cz_golden_settings_a11));
		FUNC3(adev,
							cz_golden_common_all,
							FUNC0(cz_golden_common_all));
		break;
	case CHIP_STONEY:
		FUNC3(adev,
							stoney_mgcg_cgcg_init,
							FUNC0(stoney_mgcg_cgcg_init));
		FUNC3(adev,
							stoney_golden_settings_a11,
							FUNC0(stoney_golden_settings_a11));
		FUNC3(adev,
							stoney_golden_common_all,
							FUNC0(stoney_golden_common_all));
		break;
	default:
		break;
	}
}