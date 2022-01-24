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
#define  CHIP_CARRIZO 133 
#define  CHIP_POLARIS10 132 
#define  CHIP_POLARIS11 131 
#define  CHIP_POLARIS12 130 
#define  CHIP_STONEY 129 
#define  CHIP_VEGAM 128 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cz_golden_settings_a11 ; 
 int /*<<< orphan*/  cz_mgcg_cgcg_init ; 
 int /*<<< orphan*/  polaris10_golden_settings_a11 ; 
 int /*<<< orphan*/  polaris11_golden_settings_a11 ; 
 int /*<<< orphan*/  stoney_golden_settings_a11 ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	switch (adev->asic_type) {
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
							stoney_golden_settings_a11,
							FUNC0(stoney_golden_settings_a11));
		break;
	case CHIP_POLARIS11:
	case CHIP_POLARIS12:
		FUNC1(adev,
							polaris11_golden_settings_a11,
							FUNC0(polaris11_golden_settings_a11));
		break;
	case CHIP_POLARIS10:
	case CHIP_VEGAM:
		FUNC1(adev,
							polaris10_golden_settings_a11,
							FUNC0(polaris10_golden_settings_a11));
		break;
	default:
		break;
	}
}