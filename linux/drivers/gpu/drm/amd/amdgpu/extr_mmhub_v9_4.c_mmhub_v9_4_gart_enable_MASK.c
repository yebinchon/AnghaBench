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
struct TYPE_2__ {int vram_start; int vram_end; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMHUB ; 
 int MMHUB_INSTANCE_REGISTER_OFFSET ; 
 int MMHUB_NUM_INSTANCES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmVMSHAREDVC0_MC_VM_FB_LOCATION_BASE ; 
 int /*<<< orphan*/  mmVMSHAREDVC0_MC_VM_FB_LOCATION_TOP ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*,int) ; 

int FUNC10(struct amdgpu_device *adev)
{
	int i;

	for (i = 0; i < MMHUB_NUM_INSTANCES; i++) {
		if (FUNC1(adev)) {
			/*
			 * MC_VM_FB_LOCATION_BASE/TOP is NULL for VF, becuase
			 * they are VF copy registers so vbios post doesn't
			 * program them, for SRIOV driver need to program them
			 */
			FUNC0(MMHUB, 0,
				     mmVMSHAREDVC0_MC_VM_FB_LOCATION_BASE,
				     i * MMHUB_INSTANCE_REGISTER_OFFSET,
				     adev->gmc.vram_start >> 24);
			FUNC0(MMHUB, 0,
				     mmVMSHAREDVC0_MC_VM_FB_LOCATION_TOP,
				     i * MMHUB_INSTANCE_REGISTER_OFFSET,
				     adev->gmc.vram_end >> 24);
		}

		/* GART Enable. */
		FUNC5(adev, i);
		FUNC6(adev, i);
		FUNC7(adev, i);
		FUNC4(adev, i);

		FUNC3(adev, i);
		FUNC2(adev, i);
		FUNC9(adev, i);
		FUNC8(adev, i);
	}

	return 0;
}