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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	int r;

	FUNC3(adev, false);

	r = FUNC2(adev);
	if (r)
		return r;

	r = FUNC1(adev);
	if (r)
		return r;
	r = FUNC0(adev);
	if (r)
		return r;

	FUNC3(adev, true);

	return 0;
}