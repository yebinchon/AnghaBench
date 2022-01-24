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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct amdgpu_device {int flags; TYPE_1__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_CG_SUPPORT_VCE_MGCG ; 
 int AMD_IS_APU ; 
 int CURRENT_PG_STATUS__VCE_PG_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  GRBM_GFX_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE_INSTANCE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixCURRENT_PG_STATUS ; 
 int /*<<< orphan*/  ixCURRENT_PG_STATUS_APU ; 
 int /*<<< orphan*/  mmVCE_CLOCK_GATING_A ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *handle, u32 *flags)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int data;

	FUNC4(&adev->pm.mutex);

	if (adev->flags & AMD_IS_APU)
		data = FUNC2(ixCURRENT_PG_STATUS_APU);
	else
		data = FUNC2(ixCURRENT_PG_STATUS);

	if (data & CURRENT_PG_STATUS__VCE_PG_STATUS_MASK) {
		FUNC0("Cannot get clockgating state when VCE is powergated.\n");
		goto out;
	}

	FUNC3(GRBM_GFX_INDEX, VCE_INSTANCE, 0);

	/* AMD_CG_SUPPORT_VCE_MGCG */
	data = FUNC1(mmVCE_CLOCK_GATING_A);
	if (data & (0x04 << 4))
		*flags |= AMD_CG_SUPPORT_VCE_MGCG;

out:
	FUNC5(&adev->pm.mutex);
}