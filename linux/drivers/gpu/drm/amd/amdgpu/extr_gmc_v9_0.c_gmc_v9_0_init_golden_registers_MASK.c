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
#define  CHIP_RAVEN 131 
#define  CHIP_VEGA10 130 
#define  CHIP_VEGA12 129 
#define  CHIP_VEGA20 128 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  golden_settings_athub_1_0_0 ; 
 int /*<<< orphan*/  golden_settings_mmhub_1_0_0 ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{

	switch (adev->asic_type) {
	case CHIP_VEGA10:
		if (FUNC1(adev))
			break;
		/* fall through */
	case CHIP_VEGA20:
		FUNC2(adev,
						golden_settings_mmhub_1_0_0,
						FUNC0(golden_settings_mmhub_1_0_0));
		FUNC2(adev,
						golden_settings_athub_1_0_0,
						FUNC0(golden_settings_athub_1_0_0));
		break;
	case CHIP_VEGA12:
		break;
	case CHIP_RAVEN:
		/* TODO for renoir */
		FUNC2(adev,
						golden_settings_athub_1_0_0,
						FUNC0(golden_settings_athub_1_0_0));
		break;
	default:
		break;
	}
}