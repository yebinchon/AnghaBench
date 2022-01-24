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
struct amdgpu_device {int /*<<< orphan*/  lock_reset; scalar_t__ in_gpu_reset; int /*<<< orphan*/  mp1_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  PP_MP1_STATE_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	/*unlock kfd: SRIOV would do it separately */
	if (!FUNC1(adev))
                FUNC0(adev);
	FUNC2(adev);
	adev->mp1_state = PP_MP1_STATE_NONE;
	adev->in_gpu_reset = 0;
	FUNC3(&adev->lock_reset);
}