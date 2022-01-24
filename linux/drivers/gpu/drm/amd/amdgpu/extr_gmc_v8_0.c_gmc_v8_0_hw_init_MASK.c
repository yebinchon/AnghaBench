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
struct amdgpu_device {scalar_t__ asic_type; } ;

/* Variables and functions */
 scalar_t__ CHIP_POLARIS10 ; 
 scalar_t__ CHIP_POLARIS11 ; 
 scalar_t__ CHIP_POLARIS12 ; 
 scalar_t__ CHIP_TONGA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC6(void *handle)
{
	int r;
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	FUNC2(adev);

	FUNC3(adev);

	if (adev->asic_type == CHIP_TONGA) {
		r = FUNC5(adev);
		if (r) {
			FUNC0("Failed to load MC firmware!\n");
			return r;
		}
	} else if (adev->asic_type == CHIP_POLARIS11 ||
			adev->asic_type == CHIP_POLARIS10 ||
			adev->asic_type == CHIP_POLARIS12) {
		r = FUNC4(adev);
		if (r) {
			FUNC0("Failed to load MC firmware!\n");
			return r;
		}
	}

	r = FUNC1(adev);
	if (r)
		return r;

	return r;
}