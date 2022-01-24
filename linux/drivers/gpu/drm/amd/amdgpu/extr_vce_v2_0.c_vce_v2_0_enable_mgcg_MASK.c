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
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_VCE_MGCG ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev, bool enable,
								bool sw_cg)
{
	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_VCE_MGCG)) {
		if (sw_cg)
			FUNC2(adev, true);
		else
			FUNC1(adev, true);
	} else {
		FUNC0(adev);

		if (sw_cg)
			FUNC2(adev, false);
		else
			FUNC1(adev, false);
	}
}