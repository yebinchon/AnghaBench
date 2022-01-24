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
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev)
{
	int r;

	if (!(adev->flags & AMD_IS_APU))
		FUNC2(adev, false);

	r = FUNC4(adev);
	if (r)
		return r;

	r = FUNC0(adev);
	if (r)
		return r;

	r = FUNC3(adev);
	if (r)
		return r;

	r = FUNC1(adev);
	if (r)
		return r;

	FUNC2(adev, true);

	return 0;
}