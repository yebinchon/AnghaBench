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
struct kfd_vm_fault_info {unsigned int vmid; int /*<<< orphan*/  status; int /*<<< orphan*/  page_addr; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; int /*<<< orphan*/  dqm; } ;
struct cik_ih_ring_entry {int data; int ring_id; scalar_t__ source_id; } ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 scalar_t__ CIK_INTSRC_CP_BAD_OPCODE ; 
 scalar_t__ CIK_INTSRC_CP_END_OF_PIPE ; 
 scalar_t__ CIK_INTSRC_GFX_MEM_PROT_FAULT ; 
 scalar_t__ CIK_INTSRC_GFX_PAGE_INV_FAULT ; 
 scalar_t__ CIK_INTSRC_SDMA_TRAP ; 
 scalar_t__ CIK_INTSRC_SQ_INTERRUPT_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct kfd_vm_fault_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct kfd_dev*,unsigned int,struct kfd_vm_fault_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct kfd_vm_fault_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct kfd_dev *dev,
					const uint32_t *ih_ring_entry)
{
	const struct cik_ih_ring_entry *ihre =
			(const struct cik_ih_ring_entry *)ih_ring_entry;
	uint32_t context_id = ihre->data & 0xfffffff;
	unsigned int vmid  = (ihre->ring_id & 0x0000ff00) >> 8;
	unsigned int pasid = (ihre->ring_id & 0xffff0000) >> 16;

	if (pasid == 0)
		return;

	if (ihre->source_id == CIK_INTSRC_CP_END_OF_PIPE)
		FUNC2(pasid, context_id, 28);
	else if (ihre->source_id == CIK_INTSRC_SDMA_TRAP)
		FUNC2(pasid, context_id, 28);
	else if (ihre->source_id == CIK_INTSRC_SQ_INTERRUPT_MSG)
		FUNC2(pasid, context_id & 0xff, 8);
	else if (ihre->source_id == CIK_INTSRC_CP_BAD_OPCODE)
		FUNC3(pasid);
	else if (ihre->source_id == CIK_INTSRC_GFX_PAGE_INV_FAULT ||
		ihre->source_id == CIK_INTSRC_GFX_MEM_PROT_FAULT) {
		struct kfd_vm_fault_info info;

		FUNC1(dev->dqm, pasid);

		FUNC5(&info, 0, sizeof(info));
		FUNC0(dev->kgd, &info);
		if (!info.page_addr && !info.status)
			return;

		if (info.vmid == vmid)
			FUNC4(dev, pasid, &info);
		else
			FUNC4(dev, pasid, NULL);
	}
}