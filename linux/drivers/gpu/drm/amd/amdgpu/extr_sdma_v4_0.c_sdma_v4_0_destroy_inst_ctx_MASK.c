#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct amdgpu_sdma_instance {int dummy; } ;
struct TYPE_3__ {int num_instances; TYPE_2__* instance; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_1__ sdma; } ;
struct TYPE_4__ {int /*<<< orphan*/ * fw; } ;

/* Variables and functions */
 int AMDGPU_MAX_SDMA_INSTANCES ; 
 scalar_t__ CHIP_ARCTURUS ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev)
{
	int i;

	for (i = 0; i < adev->sdma.num_instances; i++) {
		if (adev->sdma.instance[i].fw != NULL)
			FUNC1(adev->sdma.instance[i].fw);

		/* arcturus shares the same FW memory across
		   all SDMA isntances */
		if (adev->asic_type == CHIP_ARCTURUS)
			break;
	}

	FUNC0((void*)adev->sdma.instance, 0,
		sizeof(struct amdgpu_sdma_instance) * AMDGPU_MAX_SDMA_INSTANCES);
}