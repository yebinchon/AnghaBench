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
struct TYPE_2__ {int cur_state; } ;
struct amdgpu_device {TYPE_1__ vcn; } ;
typedef  enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;

/* Variables and functions */
 int AMD_PG_STATE_GATE ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC2(void *handle,
					  enum amd_powergating_state state)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int ret;

	if(state == adev->vcn.cur_state)
		return 0;

	if (state == AMD_PG_STATE_GATE)
		ret = FUNC1(adev);
	else
		ret = FUNC0(adev);

	if(!ret)
		adev->vcn.cur_state = state;

	return ret;
}