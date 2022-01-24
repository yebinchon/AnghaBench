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
typedef  enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;

/* Variables and functions */
 int AMD_CG_STATE_GATE ; 
#define  CHIP_FIJI 128 
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC3(void *handle,
					  enum amd_clockgating_state state)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (FUNC0(adev))
		return 0;

	switch (adev->asic_type) {
	case CHIP_FIJI:
		FUNC2(adev,
				state == AMD_CG_STATE_GATE);
		FUNC1(adev,
				state == AMD_CG_STATE_GATE);
		break;
	default:
		break;
	}
	return 0;
}