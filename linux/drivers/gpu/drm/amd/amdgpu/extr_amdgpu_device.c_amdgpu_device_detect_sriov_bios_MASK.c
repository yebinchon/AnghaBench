#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int caps; } ;
struct amdgpu_device {TYPE_1__ virt; scalar_t__ is_atom_fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGIM_ERROR_VF_NO_VBIOS ; 
 int AMDGPU_SRIOV_CAPS_SRIOV_VBIOS ; 
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev)
{
	if (FUNC2(adev)) {
		if (adev->is_atom_fw) {
			if (FUNC1(adev))
				adev->virt.caps |= AMDGPU_SRIOV_CAPS_SRIOV_VBIOS;
		} else {
			if (FUNC0(adev))
				adev->virt.caps |= AMDGPU_SRIOV_CAPS_SRIOV_VBIOS;
		}

		if (!(adev->virt.caps & AMDGPU_SRIOV_CAPS_SRIOV_VBIOS))
			FUNC3(adev, AMDGIM_ERROR_VF_NO_VBIOS, 0, 0);
	}
}