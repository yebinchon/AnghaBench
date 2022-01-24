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
typedef  int /*<<< orphan*/  uint64_t ;
struct amdgpu_device {scalar_t__ asic_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct amdgpu_bo {TYPE_1__ tbo; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_PTE_VALID ; 
 scalar_t__ CHIP_VEGA10 ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_bo*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_bo*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct amdgpu_device* FUNC2 (int /*<<< orphan*/ ) ; 

uint64_t FUNC3(struct amdgpu_bo *bo)
{
	struct amdgpu_device *adev = FUNC2(bo->tbo.bdev);
	uint64_t pd_addr;

	/* TODO: move that into ASIC specific code */
	if (adev->asic_type >= CHIP_VEGA10) {
		uint64_t flags = AMDGPU_PTE_VALID;

		FUNC1(bo, -1, &pd_addr, &flags);
		pd_addr |= flags;
	} else {
		pd_addr = FUNC0(bo);
	}
	return pd_addr;
}