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
struct TYPE_2__ {int num_uvd_inst; int num_enc_rings; } ;
struct amdgpu_device {int flags; TYPE_1__ uvd; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int CC_HARVEST_FUSES__UVD_DISABLE_MASK ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixCC_HARVEST_FUSES ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	adev->uvd.num_uvd_inst = 1;

	if (!(adev->flags & AMD_IS_APU) &&
	    (FUNC0(ixCC_HARVEST_FUSES) & CC_HARVEST_FUSES__UVD_DISABLE_MASK))
		return -ENOENT;

	FUNC4(adev);

	if (FUNC1(adev)) {
		adev->uvd.num_enc_rings = 2;
		FUNC2(adev);
	}

	FUNC3(adev);

	return 0;
}