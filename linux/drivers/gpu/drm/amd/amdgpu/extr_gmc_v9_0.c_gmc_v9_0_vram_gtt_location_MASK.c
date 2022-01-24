#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct amdgpu_gmc {int dummy; } ;
struct TYPE_5__ {int physical_node_id; int node_segment_size; } ;
struct TYPE_6__ {TYPE_2__ xgmi; } ;
struct TYPE_4__ {int vram_base_offset; } ;
struct amdgpu_device {scalar_t__ asic_type; TYPE_3__ gmc; TYPE_1__ vm_manager; } ;

/* Variables and functions */
 scalar_t__ CHIP_ARCTURUS ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,struct amdgpu_gmc*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct amdgpu_gmc*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct amdgpu_gmc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC7(struct amdgpu_device *adev,
					struct amdgpu_gmc *mc)
{
	u64 base = 0;

	if (adev->asic_type == CHIP_ARCTURUS)
		base = FUNC6(adev);
	else if (!FUNC3(adev))
		base = FUNC5(adev);

	/* add the xgmi offset of the physical node */
	base += adev->gmc.xgmi.physical_node_id * adev->gmc.xgmi.node_segment_size;
	FUNC2(adev, mc, base);
	FUNC1(adev, mc);
	FUNC0(adev, mc);
	/* base offset of vram pages */
	adev->vm_manager.vram_base_offset = FUNC4(adev);

	/* XXX: add the xgmi offset of the physical node? */
	adev->vm_manager.vram_base_offset +=
		adev->gmc.xgmi.physical_node_id * adev->gmc.xgmi.node_segment_size;
}