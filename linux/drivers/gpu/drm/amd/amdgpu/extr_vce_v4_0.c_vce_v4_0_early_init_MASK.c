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
struct TYPE_2__ {int num_rings; } ;
struct amdgpu_device {TYPE_1__ vce; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC3(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (FUNC0(adev)) /* currently only VCN0 support SRIOV */
		adev->vce.num_rings = 1;
	else
		adev->vce.num_rings = 3;

	FUNC2(adev);
	FUNC1(adev);

	return 0;
}