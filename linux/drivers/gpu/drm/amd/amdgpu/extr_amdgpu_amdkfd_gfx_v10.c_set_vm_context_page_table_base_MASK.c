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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct kgd_dev {int dummy; } ;
struct TYPE_2__ {int max_pfn; } ;
struct amdgpu_device {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 int AMDGPU_PTE_VALID ; 
 int /*<<< orphan*/  GC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 struct amdgpu_device* FUNC3 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 ; 
 int /*<<< orphan*/  mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct kgd_dev *kgd, uint32_t vmid,
		uint64_t page_table_base)
{
	struct amdgpu_device *adev = FUNC3(kgd);
	uint64_t base = page_table_base | AMDGPU_PTE_VALID;

	if (!FUNC2(adev, vmid)) {
		FUNC5("trying to set page table base for wrong VMID %u\n",
		       vmid);
		return;
	}

	/* TODO: take advantage of per-process address space size. For
	 * now, all processes share the same address space size, like
	 * on GFX8 and older.
	 */
	FUNC1(FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32) + (vmid*2), 0);
	FUNC1(FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32) + (vmid*2), 0);

	FUNC1(FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32) + (vmid*2),
			FUNC4(adev->vm_manager.max_pfn - 1));
	FUNC1(FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32) + (vmid*2),
			FUNC6(adev->vm_manager.max_pfn - 1));

	FUNC1(FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32) + (vmid*2), FUNC4(base));
	FUNC1(FUNC0(GC, 0, mmGCVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32) + (vmid*2), FUNC6(base));
}