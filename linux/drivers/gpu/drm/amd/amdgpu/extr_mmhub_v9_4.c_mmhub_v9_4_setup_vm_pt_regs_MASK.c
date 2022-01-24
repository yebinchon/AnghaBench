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
 int MMHUB_INSTANCE_REGISTER_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 ; 
 int mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 ; 
 int mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct amdgpu_device *adev, int hubid,
				uint32_t vmid, uint64_t value)
{
	/* two registers distance between mmVML2VC0_VM_CONTEXT0_* to
	 * mmVML2VC0_VM_CONTEXT1_*
	 */
	int dist = mmVML2VC0_VM_CONTEXT1_PAGE_TABLE_BASE_ADDR_LO32
			- mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32;

	FUNC0(MMHUB, 0,
			    mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32,
			    dist * vmid + hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
			    FUNC1(value));

	FUNC0(MMHUB, 0,
			    mmVML2VC0_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32,
			    dist * vmid + hubid * MMHUB_INSTANCE_REGISTER_OFFSET,
			    FUNC2(value));

}