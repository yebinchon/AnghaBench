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
struct amdgpu_device {int /*<<< orphan*/  in_suspend; } ;

/* Variables and functions */
#define  AMD_RESET_METHOD_BACO 129 
#define  AMD_RESET_METHOD_MODE2 128 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	switch (FUNC3(adev)) {
		case AMD_RESET_METHOD_BACO:
			if (!adev->in_suspend)
				FUNC0(adev);
			return FUNC1(adev);
		case AMD_RESET_METHOD_MODE2:
			return FUNC4(adev);
		default:
			if (!adev->in_suspend)
				FUNC0(adev);
			return FUNC2(adev);
	}
}