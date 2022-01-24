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
struct amdgpu_device {int is_atom_fw; scalar_t__ asic_type; } ;

/* Variables and functions */
 scalar_t__ CHIP_VEGA10 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 scalar_t__ FUNC5 (struct amdgpu_device*) ; 
 scalar_t__ FUNC6 (struct amdgpu_device*) ; 
 scalar_t__ FUNC7 (struct amdgpu_device*) ; 

bool FUNC8(struct amdgpu_device *adev)
{
	if (FUNC2(adev))
		goto success;

	if (FUNC1(adev))
		goto success;

	if (FUNC7(adev))
		goto success;

	if (FUNC3(adev))
		goto success;

	if (FUNC4(adev))
		goto success;

	if (FUNC5(adev))
		goto success;

	if (FUNC6(adev))
		goto success;

	FUNC0("Unable to locate a BIOS ROM\n");
	return false;

success:
	adev->is_atom_fw = (adev->asic_type >= CHIP_VEGA10) ? true : false;
	return true;
}