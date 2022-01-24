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
typedef  scalar_t__ uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/ * saved_table_addr; } ;
struct radeon_device {TYPE_1__ vm_manager; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int ENABLE_L2_FRAGMENT_PROCESSING ; 
 int ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE ; 
 int ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE ; 
 int L2_CACHE_BIGK_ASSOCIATIVITY ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  MC_VM_MX_L1_TLB_CNTL ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int SYSTEM_ACCESS_MODE_NOT_IN_SYS ; 
 int SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU ; 
 int /*<<< orphan*/  VM_CONTEXT0_CNTL ; 
 scalar_t__ VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ; 
 int /*<<< orphan*/  VM_CONTEXT1_CNTL ; 
 scalar_t__ VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ; 
 int /*<<< orphan*/  VM_L2_CNTL ; 
 int /*<<< orphan*/  VM_L2_CNTL2 ; 
 int /*<<< orphan*/  VM_L2_CNTL3 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static void FUNC6(struct radeon_device *rdev)
{
	unsigned i;

	for (i = 1; i < 16; ++i) {
		uint32_t reg;
		if (i < 8)
			reg = VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (i << 2);
		else
			reg = VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((i - 8) << 2);
		rdev->vm_manager.saved_table_addr[i] = FUNC3(reg);
	}

	/* Disable all tables */
	FUNC4(VM_CONTEXT0_CNTL, 0);
	FUNC4(VM_CONTEXT1_CNTL, 0);
	/* Setup TLB control */
	FUNC4(MC_VM_MX_L1_TLB_CNTL, SYSTEM_ACCESS_MODE_NOT_IN_SYS |
	       SYSTEM_APERTURE_UNMAPPED_ACCESS_PASS_THRU);
	/* Setup L2 cache */
	FUNC4(VM_L2_CNTL,
	       ENABLE_L2_FRAGMENT_PROCESSING |
	       ENABLE_L2_PTE_CACHE_LRU_UPDATE_BY_WRITE |
	       ENABLE_L2_PDE0_CACHE_LRU_UPDATE_BY_WRITE |
	       FUNC1(7) |
	       FUNC0(1));
	FUNC4(VM_L2_CNTL2, 0);
	FUNC4(VM_L2_CNTL3, L2_CACHE_BIGK_ASSOCIATIVITY |
	       FUNC2(6));
	FUNC5(rdev);
}