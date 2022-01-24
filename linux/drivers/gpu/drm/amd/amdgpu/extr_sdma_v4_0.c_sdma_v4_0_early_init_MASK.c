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
struct TYPE_2__ {int num_instances; int has_page_queue; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ sdma; } ;

/* Variables and functions */
 scalar_t__ CHIP_ARCTURUS ; 
 scalar_t__ CHIP_RAVEN ; 
 scalar_t__ CHIP_RENOIR ; 
 scalar_t__ CHIP_VEGA10 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC8(void *handle)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int r;

	if (adev->asic_type == CHIP_RAVEN || adev->asic_type == CHIP_RENOIR)
		adev->sdma.num_instances = 1;
	else if (adev->asic_type == CHIP_ARCTURUS)
		adev->sdma.num_instances = 8;
	else
		adev->sdma.num_instances = 2;

	r = FUNC3(adev);
	if (r) {
		FUNC0("Failed to load sdma firmware!\n");
		return r;
	}

	/* TODO: Page queue breaks driver reload under SRIOV */
	if ((adev->asic_type == CHIP_VEGA10) && FUNC1((adev)))
		adev->sdma.has_page_queue = false;
	else if (FUNC2(adev))
		adev->sdma.has_page_queue = true;

	FUNC6(adev);
	FUNC4(adev);
	FUNC7(adev);
	FUNC5(adev);

	return 0;
}