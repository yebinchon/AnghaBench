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
struct amdgpu_device {int in_gpu_reset; int /*<<< orphan*/  mp1_state; int /*<<< orphan*/  gpu_reset_counter; int /*<<< orphan*/  lock_reset; } ;

/* Variables and functions */
#define  AMD_RESET_METHOD_MODE1 129 
#define  AMD_RESET_METHOD_MODE2 128 
 int /*<<< orphan*/  PP_MP1_STATE_NONE ; 
 int /*<<< orphan*/  PP_MP1_STATE_RESET ; 
 int /*<<< orphan*/  PP_MP1_STATE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC6(struct amdgpu_device *adev, bool trylock)
{
	if (trylock) {
		if (!FUNC5(&adev->lock_reset))
			return false;
	} else
		FUNC4(&adev->lock_reset);

	FUNC3(&adev->gpu_reset_counter);
	adev->in_gpu_reset = 1;
	switch (FUNC1(adev)) {
	case AMD_RESET_METHOD_MODE1:
		adev->mp1_state = PP_MP1_STATE_SHUTDOWN;
		break;
	case AMD_RESET_METHOD_MODE2:
		adev->mp1_state = PP_MP1_STATE_RESET;
		break;
	default:
		adev->mp1_state = PP_MP1_STATE_NONE;
		break;
	}
	/* Block kfd: SRIOV would do it separately */
	if (!FUNC2(adev))
                FUNC0(adev);

	return true;
}