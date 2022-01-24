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
struct TYPE_4__ {scalar_t__ cpu_addr; scalar_t__ gpu_addr; int /*<<< orphan*/  bo; } ;
struct TYPE_3__ {TYPE_2__ mm_table; } ;
struct amdgpu_device {TYPE_1__ virt; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMDGPU_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct amdgpu_device *adev)
{
	int r;

	if (!FUNC3(adev) || adev->virt.mm_table.gpu_addr)
		return 0;

	r = FUNC2(adev, PAGE_SIZE, PAGE_SIZE,
				    AMDGPU_GEM_DOMAIN_VRAM,
				    &adev->virt.mm_table.bo,
				    &adev->virt.mm_table.gpu_addr,
				    (void *)&adev->virt.mm_table.cpu_addr);
	if (r) {
		FUNC0("failed to alloc mm table and error = %d.\n", r);
		return r;
	}

	FUNC4((void *)adev->virt.mm_table.cpu_addr, 0, PAGE_SIZE);
	FUNC1("MM table gpu addr = 0x%llx, cpu addr = %p.\n",
		 adev->virt.mm_table.gpu_addr,
		 adev->virt.mm_table.cpu_addr);
	return 0;
}