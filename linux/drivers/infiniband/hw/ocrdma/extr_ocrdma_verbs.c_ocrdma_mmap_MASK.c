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
typedef  unsigned long u64 ;
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; int vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct ocrdma_ucontext {int dummy; } ;
struct TYPE_2__ {unsigned long db_total_size; unsigned long db_page_size; unsigned long dpp_unmapped_len; scalar_t__ dpp_unmapped_addr; scalar_t__ unmapped_db; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int VM_READ ; 
 struct ocrdma_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ocrdma_ucontext* FUNC1 (struct ib_ucontext*) ; 
 int FUNC2 (struct vm_area_struct*,int,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ocrdma_ucontext*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct vm_area_struct*,int,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

int FUNC7(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	struct ocrdma_ucontext *ucontext = FUNC1(context);
	struct ocrdma_dev *dev = FUNC0(context->device);
	unsigned long vm_page = vma->vm_pgoff << PAGE_SHIFT;
	u64 unmapped_db = (u64) dev->nic_info.unmapped_db;
	unsigned long len = (vma->vm_end - vma->vm_start);
	int status;
	bool found;

	if (vma->vm_start & (PAGE_SIZE - 1))
		return -EINVAL;
	found = FUNC3(ucontext, vma->vm_pgoff << PAGE_SHIFT, len);
	if (!found)
		return -EINVAL;

	if ((vm_page >= unmapped_db) && (vm_page <= (unmapped_db +
		dev->nic_info.db_total_size)) &&
		(len <=	dev->nic_info.db_page_size)) {
		if (vma->vm_flags & VM_READ)
			return -EPERM;

		vma->vm_page_prot = FUNC4(vma->vm_page_prot);
		status = FUNC2(vma, vma->vm_start, vma->vm_pgoff,
					    len, vma->vm_page_prot);
	} else if (dev->nic_info.dpp_unmapped_len &&
		(vm_page >= (u64) dev->nic_info.dpp_unmapped_addr) &&
		(vm_page <= (u64) (dev->nic_info.dpp_unmapped_addr +
			dev->nic_info.dpp_unmapped_len)) &&
		(len <= dev->nic_info.dpp_unmapped_len)) {
		if (vma->vm_flags & VM_READ)
			return -EPERM;

		vma->vm_page_prot = FUNC5(vma->vm_page_prot);
		status = FUNC2(vma, vma->vm_start, vma->vm_pgoff,
					    len, vma->vm_page_prot);
	} else {
		status = FUNC6(vma, vma->vm_start,
					 vma->vm_pgoff, len, vma->vm_page_prot);
	}
	return status;
}