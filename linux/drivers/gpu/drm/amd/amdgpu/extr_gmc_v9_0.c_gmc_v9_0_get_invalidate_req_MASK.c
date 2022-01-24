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
typedef  int uint32_t ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAR_PROTECTION_FAULT_STATUS_ADDR ; 
 int /*<<< orphan*/  FLUSH_TYPE ; 
 int /*<<< orphan*/  INVALIDATE_L1_PTES ; 
 int /*<<< orphan*/  INVALIDATE_L2_PDE0 ; 
 int /*<<< orphan*/  INVALIDATE_L2_PDE1 ; 
 int /*<<< orphan*/  INVALIDATE_L2_PDE2 ; 
 int /*<<< orphan*/  INVALIDATE_L2_PTES ; 
 int /*<<< orphan*/  PER_VMID_INVALIDATE_REQ ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VM_INVALIDATE_ENG0_REQ ; 

__attribute__((used)) static uint32_t FUNC1(unsigned int vmid,
					uint32_t flush_type)
{
	u32 req = 0;

	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ,
			    PER_VMID_INVALIDATE_REQ, 1 << vmid);
	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ, FLUSH_TYPE, flush_type);
	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PTES, 1);
	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PDE0, 1);
	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PDE1, 1);
	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L2_PDE2, 1);
	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ, INVALIDATE_L1_PTES, 1);
	req = FUNC0(req, VM_INVALIDATE_ENG0_REQ,
			    CLEAR_PROTECTION_FAULT_STATUS_ADDR,	0);

	return req;
}