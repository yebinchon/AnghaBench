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
typedef  int uint32_t ;
struct TYPE_4__ {int max_pfn; } ;
struct TYPE_3__ {int prt_warning; } ;
struct amdgpu_device {TYPE_2__ vm_manager; TYPE_1__ gmc; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMDGPU_GPU_PAGE_SHIFT ; 
 int AMDGPU_VA_RESERVED_SIZE ; 
 int /*<<< orphan*/  CB_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS ; 
 int /*<<< orphan*/  CB_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS ; 
 int /*<<< orphan*/  L1_TLB_STORE_INVALID_ENTRIES ; 
 int /*<<< orphan*/  L2_CACHE_STORE_INVALID_ENTRIES ; 
 int /*<<< orphan*/  MASK_PDE0_FAULT ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TC_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS ; 
 int /*<<< orphan*/  TC_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS ; 
 int /*<<< orphan*/  VM_PRT_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE0_HIGH_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE0_LOW_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE1_HIGH_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE1_LOW_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE2_HIGH_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE2_LOW_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE3_HIGH_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_APERTURE3_LOW_ADDR ; 
 int /*<<< orphan*/  mmVM_PRT_CNTL ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev, bool enable)
{
	uint32_t tmp;

	if (enable && !adev->gmc.prt_warning) {
		FUNC3(adev->dev, "Disabling VM faults because of PRT request!\n");
		adev->gmc.prt_warning = true;
	}

	tmp = FUNC1(mmVM_PRT_CNTL);
	tmp = FUNC0(tmp, VM_PRT_CNTL,
			    CB_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS, enable);
	tmp = FUNC0(tmp, VM_PRT_CNTL,
			    CB_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS, enable);
	tmp = FUNC0(tmp, VM_PRT_CNTL,
			    TC_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS, enable);
	tmp = FUNC0(tmp, VM_PRT_CNTL,
			    TC_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS, enable);
	tmp = FUNC0(tmp, VM_PRT_CNTL,
			    L2_CACHE_STORE_INVALID_ENTRIES, enable);
	tmp = FUNC0(tmp, VM_PRT_CNTL,
			    L1_TLB_STORE_INVALID_ENTRIES, enable);
	tmp = FUNC0(tmp, VM_PRT_CNTL,
			    MASK_PDE0_FAULT, enable);
	FUNC2(mmVM_PRT_CNTL, tmp);

	if (enable) {
		uint32_t low = AMDGPU_VA_RESERVED_SIZE >> AMDGPU_GPU_PAGE_SHIFT;
		uint32_t high = adev->vm_manager.max_pfn -
			(AMDGPU_VA_RESERVED_SIZE >> AMDGPU_GPU_PAGE_SHIFT);

		FUNC2(mmVM_PRT_APERTURE0_LOW_ADDR, low);
		FUNC2(mmVM_PRT_APERTURE1_LOW_ADDR, low);
		FUNC2(mmVM_PRT_APERTURE2_LOW_ADDR, low);
		FUNC2(mmVM_PRT_APERTURE3_LOW_ADDR, low);
		FUNC2(mmVM_PRT_APERTURE0_HIGH_ADDR, high);
		FUNC2(mmVM_PRT_APERTURE1_HIGH_ADDR, high);
		FUNC2(mmVM_PRT_APERTURE2_HIGH_ADDR, high);
		FUNC2(mmVM_PRT_APERTURE3_HIGH_ADDR, high);
	} else {
		FUNC2(mmVM_PRT_APERTURE0_LOW_ADDR, 0xfffffff);
		FUNC2(mmVM_PRT_APERTURE1_LOW_ADDR, 0xfffffff);
		FUNC2(mmVM_PRT_APERTURE2_LOW_ADDR, 0xfffffff);
		FUNC2(mmVM_PRT_APERTURE3_LOW_ADDR, 0xfffffff);
		FUNC2(mmVM_PRT_APERTURE0_HIGH_ADDR, 0x0);
		FUNC2(mmVM_PRT_APERTURE1_HIGH_ADDR, 0x0);
		FUNC2(mmVM_PRT_APERTURE2_HIGH_ADDR, 0x0);
		FUNC2(mmVM_PRT_APERTURE3_HIGH_ADDR, 0x0);
	}
}