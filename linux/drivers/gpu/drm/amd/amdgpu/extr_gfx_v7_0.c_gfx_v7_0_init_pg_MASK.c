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
struct amdgpu_device {int pg_flags; } ;

/* Variables and functions */
 int AMD_PG_SUPPORT_CP ; 
 int AMD_PG_SUPPORT_GDS ; 
 int AMD_PG_SUPPORT_GFX_DMG ; 
 int AMD_PG_SUPPORT_GFX_PG ; 
 int AMD_PG_SUPPORT_GFX_SMG ; 
 int AMD_PG_SUPPORT_RLC_SMU_HS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_device *adev)
{
	if (adev->pg_flags & (AMD_PG_SUPPORT_GFX_PG |
			      AMD_PG_SUPPORT_GFX_SMG |
			      AMD_PG_SUPPORT_GFX_DMG |
			      AMD_PG_SUPPORT_CP |
			      AMD_PG_SUPPORT_GDS |
			      AMD_PG_SUPPORT_RLC_SMU_HS)) {
		FUNC3(adev, true);
		FUNC2(adev, true);
		if (adev->pg_flags & AMD_PG_SUPPORT_GFX_PG) {
			FUNC5(adev);
			FUNC0(adev, true);
			FUNC1(adev, true);
		}
		FUNC4(adev);
		FUNC6(adev, true);
	}
}