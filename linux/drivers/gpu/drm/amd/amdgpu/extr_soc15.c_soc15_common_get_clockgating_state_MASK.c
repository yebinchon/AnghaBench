#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_device {TYPE_2__* df_funcs; TYPE_1__* nbio_funcs; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_clockgating_state ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_clockgating_state ) (struct amdgpu_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_CG_SUPPORT_DRM_LS ; 
 int /*<<< orphan*/  AMD_CG_SUPPORT_DRM_MGCG ; 
 int /*<<< orphan*/  AMD_CG_SUPPORT_HDP_LS ; 
 int /*<<< orphan*/  AMD_CG_SUPPORT_ROM_MGCG ; 
 int CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK ; 
 int /*<<< orphan*/  HDP ; 
 int HDP_MEM_POWER_LS__LS_ENABLE_MASK ; 
 int /*<<< orphan*/  MP0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmCGTT_ROM_CLK_CTRL0 ; 
 int /*<<< orphan*/  mmHDP_MEM_POWER_LS ; 
 int /*<<< orphan*/  mmMP0_MISC_CGTT_CTRL0 ; 
 int /*<<< orphan*/  mmMP0_MISC_LIGHT_SLEEP_CTRL ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *handle, u32 *flags)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int data;

	if (FUNC2(adev))
		*flags = 0;

	adev->nbio_funcs->get_clockgating_state(adev, flags);

	/* AMD_CG_SUPPORT_HDP_LS */
	data = FUNC0(FUNC1(HDP, 0, mmHDP_MEM_POWER_LS));
	if (data & HDP_MEM_POWER_LS__LS_ENABLE_MASK)
		*flags |= AMD_CG_SUPPORT_HDP_LS;

	/* AMD_CG_SUPPORT_DRM_MGCG */
	data = FUNC0(FUNC1(MP0, 0, mmMP0_MISC_CGTT_CTRL0));
	if (!(data & 0x01000000))
		*flags |= AMD_CG_SUPPORT_DRM_MGCG;

	/* AMD_CG_SUPPORT_DRM_LS */
	data = FUNC0(FUNC1(MP0, 0, mmMP0_MISC_LIGHT_SLEEP_CTRL));
	if (data & 0x1)
		*flags |= AMD_CG_SUPPORT_DRM_LS;

	/* AMD_CG_SUPPORT_ROM_MGCG */
	data = FUNC0(FUNC1(SMUIO, 0, mmCGTT_ROM_CLK_CTRL0));
	if (!(data & CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK))
		*flags |= AMD_CG_SUPPORT_ROM_MGCG;

	adev->df_funcs->get_clockgating_state(adev, flags);
}