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
struct amdgpu_device {int asic_type; TYPE_2__* nbio_funcs; TYPE_1__* df_funcs; } ;
typedef  enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;
struct TYPE_4__ {int /*<<< orphan*/  (* update_medium_grain_light_sleep ) (struct amdgpu_device*,int) ;int /*<<< orphan*/  (* update_medium_grain_clock_gating ) (struct amdgpu_device*,int) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* update_medium_grain_clock_gating ) (struct amdgpu_device*,int) ;} ;

/* Variables and functions */
 int AMD_CG_STATE_GATE ; 
#define  CHIP_ARCTURUS 133 
#define  CHIP_RAVEN 132 
#define  CHIP_RENOIR 131 
#define  CHIP_VEGA10 130 
#define  CHIP_VEGA12 129 
#define  CHIP_VEGA20 128 
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC10(void *handle,
					    enum amd_clockgating_state state)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (FUNC0(adev))
		return 0;

	switch (adev->asic_type) {
	case CHIP_VEGA10:
	case CHIP_VEGA12:
	case CHIP_VEGA20:
		adev->nbio_funcs->update_medium_grain_clock_gating(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		adev->nbio_funcs->update_medium_grain_light_sleep(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC3(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC1(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC2(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC4(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		adev->df_funcs->update_medium_grain_clock_gating(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		break;
	case CHIP_RAVEN:
	case CHIP_RENOIR:
		adev->nbio_funcs->update_medium_grain_clock_gating(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		adev->nbio_funcs->update_medium_grain_light_sleep(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC3(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC1(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC2(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		FUNC4(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		break;
	case CHIP_ARCTURUS:
		FUNC3(adev,
				state == AMD_CG_STATE_GATE ? true : false);
		break;
	default:
		break;
	}
	return 0;
}