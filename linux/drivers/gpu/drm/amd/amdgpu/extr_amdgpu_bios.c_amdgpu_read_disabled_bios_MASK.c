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

/* Variables and functions */
 int AMD_IS_APU ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*) ; 

__attribute__((used)) static bool FUNC2(struct amdgpu_device *adev)
{
	if (adev->flags & AMD_IS_APU)
		return FUNC1(adev);
	else
		return FUNC0(adev);
}