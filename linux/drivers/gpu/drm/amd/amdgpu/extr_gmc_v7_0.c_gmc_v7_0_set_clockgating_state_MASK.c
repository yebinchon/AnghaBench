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
struct amdgpu_device {int flags; } ;
typedef  enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;

/* Variables and functions */
 int AMD_CG_STATE_GATE ; 
 int AMD_IS_APU ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC5(void *handle,
					  enum amd_clockgating_state state)
{
	bool gate = false;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (state == AMD_CG_STATE_GATE)
		gate = true;

	if (!(adev->flags & AMD_IS_APU)) {
		FUNC4(adev, gate);
		FUNC3(adev, gate);
	}
	FUNC0(adev, gate);
	FUNC2(adev, gate);
	FUNC1(adev, gate);

	return 0;
}