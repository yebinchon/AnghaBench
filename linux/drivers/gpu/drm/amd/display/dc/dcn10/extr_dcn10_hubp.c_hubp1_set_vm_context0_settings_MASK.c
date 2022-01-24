#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int high_part; int /*<<< orphan*/  low_part; } ;
struct TYPE_7__ {int /*<<< orphan*/  low_part; int /*<<< orphan*/  high_part; } ;
struct TYPE_6__ {int /*<<< orphan*/  low_part; int /*<<< orphan*/  high_part; } ;
struct TYPE_5__ {int /*<<< orphan*/  low_part; int /*<<< orphan*/  high_part; } ;
struct vm_context0_param {TYPE_4__ fault_default; TYPE_3__ pte_end; TYPE_2__ pte_start; TYPE_1__ pte_base; } ;
struct hubp {int dummy; } ;
struct dcn10_hubp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB ; 
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB ; 
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB ; 
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB ; 
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB ; 
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB ; 
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB ; 
 int /*<<< orphan*/  DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB ; 
 int /*<<< orphan*/  DCN_VM_MX_L1_TLB_CNTL ; 
 int /*<<< orphan*/  ENABLE_L1_TLB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYSTEM_ACCESS_MODE ; 
 struct dcn10_hubp* FUNC2 (struct hubp*) ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB ; 
 int /*<<< orphan*/  VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_SYSTEM ; 
 int context0_default_system ; 

__attribute__((used)) static void FUNC3(struct hubp *hubp,
		const struct vm_context0_param *vm0)
{
	struct dcn10_hubp *hubp1 = FUNC2(hubp);
	/* pte base */
	FUNC0(DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB, 0,
			VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB, vm0->pte_base.high_part);
	FUNC0(DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB, 0,
			VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB, vm0->pte_base.low_part);

	/* pte start */
	FUNC0(DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB, 0,
			VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB, vm0->pte_start.high_part);
	FUNC0(DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB, 0,
			VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB, vm0->pte_start.low_part);

	/* pte end */
	FUNC0(DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB, 0,
			VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB, vm0->pte_end.high_part);
	FUNC0(DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB, 0,
			VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB, vm0->pte_end.low_part);

	/* fault handling */
	FUNC1(DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB, 0,
			VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB, vm0->fault_default.high_part,
			VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_SYSTEM, context0_default_system);
	FUNC0(DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB, 0,
			VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB, vm0->fault_default.low_part);

	/* control: enable VM PTE*/
	FUNC1(DCN_VM_MX_L1_TLB_CNTL, 0,
			ENABLE_L1_TLB, 1,
			SYSTEM_ACCESS_MODE, 3);
}