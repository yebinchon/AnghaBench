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
struct amdgpu_device {int pg_flags; int asic_type; } ;
typedef  enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;

/* Variables and functions */
 int AMD_PG_STATE_GATE ; 
 int AMD_PG_SUPPORT_CP ; 
 int AMD_PG_SUPPORT_GFX_DMG ; 
 int AMD_PG_SUPPORT_GFX_QUICK_MG ; 
 int AMD_PG_SUPPORT_GFX_SMG ; 
 int AMD_PG_SUPPORT_RLC_SMU_HS ; 
#define  CHIP_CARRIZO 132 
#define  CHIP_POLARIS11 131 
#define  CHIP_POLARIS12 130 
#define  CHIP_STONEY 129 
#define  CHIP_VEGAM 128 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC10(void *handle,
					  enum amd_powergating_state state)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	bool enable = (state == AMD_PG_STATE_GATE);

	if (FUNC2(adev))
		return 0;

	if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_SMG |
				AMD_PG_SUPPORT_RLC_SMU_HS |
				AMD_PG_SUPPORT_CP |
				AMD_PG_SUPPORT_GFX_DMG))
		FUNC0(adev);
	switch (adev->asic_type) {
	case CHIP_CARRIZO:
	case CHIP_STONEY:

		if (adev->pg_flags & AMD_PG_SUPPORT_RLC_SMU_HS) {
			FUNC5(adev, true);
			FUNC4(adev, true);
		} else {
			FUNC5(adev, false);
			FUNC4(adev, false);
		}
		if (adev->pg_flags & AMD_PG_SUPPORT_CP)
			FUNC3(adev, true);
		else
			FUNC3(adev, false);

		FUNC6(adev, enable);

		if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_SMG) && enable)
			FUNC8(adev, true);
		else
			FUNC8(adev, false);

		if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_DMG) && enable)
			FUNC7(adev, true);
		else
			FUNC7(adev, false);
		break;
	case CHIP_POLARIS11:
	case CHIP_POLARIS12:
	case CHIP_VEGAM:
		if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_SMG) && enable)
			FUNC8(adev, true);
		else
			FUNC8(adev, false);

		if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_DMG) && enable)
			FUNC7(adev, true);
		else
			FUNC7(adev, false);

		if ((adev->pg_flags & AMD_PG_SUPPORT_GFX_QUICK_MG) && enable)
			FUNC9(adev, true);
		else
			FUNC9(adev, false);
		break;
	default:
		break;
	}
	if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_SMG |
				AMD_PG_SUPPORT_RLC_SMU_HS |
				AMD_PG_SUPPORT_CP |
				AMD_PG_SUPPORT_GFX_DMG))
		FUNC1(adev);
	return 0;
}