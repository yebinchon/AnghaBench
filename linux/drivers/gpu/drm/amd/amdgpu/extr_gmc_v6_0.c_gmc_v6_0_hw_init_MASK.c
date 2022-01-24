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
struct amdgpu_device {int flags; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC4(void *handle)
{
	int r;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC3(adev);

	if (!(adev->flags & AMD_IS_APU)) {
		r = FUNC2(adev);
		if (r) {
			FUNC0(adev->dev, "Failed to load MC firmware!\n");
			return r;
		}
	}

	r = FUNC1(adev);
	if (r)
		return r;

	return r;
}