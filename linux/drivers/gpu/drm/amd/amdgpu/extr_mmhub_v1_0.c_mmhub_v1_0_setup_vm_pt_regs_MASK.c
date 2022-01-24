#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMHUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ; 
 int mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ; 
 int mmVM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct amdgpu_device *adev, uint32_t vmid,
				uint64_t page_table_base)
{
	/* two registers distance between mmVM_CONTEXT0_* to mmVM_CONTEXT1_* */
	int offset = mmVM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32
			- mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32;

	FUNC0(MMHUB, 0, mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32,
			offset * vmid, FUNC1(page_table_base));

	FUNC0(MMHUB, 0, mmVM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32,
			offset * vmid, FUNC2(page_table_base));
}