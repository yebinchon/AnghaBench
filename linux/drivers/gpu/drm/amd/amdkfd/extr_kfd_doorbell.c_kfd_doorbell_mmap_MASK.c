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
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int VM_DONTCOPY ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int VM_IO ; 
 int VM_NORESERVE ; 
 int VM_PFNMAP ; 
 int FUNC0 (struct vm_area_struct*,scalar_t__,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kfd_dev*) ; 
 int FUNC2 (struct kfd_dev*,struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long long,int,int,scalar_t__) ; 

int FUNC5(struct kfd_dev *dev, struct kfd_process *process,
		      struct vm_area_struct *vma)
{
	phys_addr_t address;

	/*
	 * For simplicitly we only allow mapping of the entire doorbell
	 * allocation of a single device & process.
	 */
	if (vma->vm_end - vma->vm_start != FUNC1(dev))
		return -EINVAL;

	/* Calculate physical address of doorbell */
	address = FUNC2(dev, process);

	vma->vm_flags |= VM_IO | VM_DONTCOPY | VM_DONTEXPAND | VM_NORESERVE |
				VM_DONTDUMP | VM_PFNMAP;

	vma->vm_page_prot = FUNC3(vma->vm_page_prot);

	FUNC4("Mapping doorbell page\n"
		 "     target user address == 0x%08llX\n"
		 "     physical address    == 0x%08llX\n"
		 "     vm_flags            == 0x%04lX\n"
		 "     size                == 0x%04lX\n",
		 (unsigned long long) vma->vm_start, address, vma->vm_flags,
		 FUNC1(dev));


	return FUNC0(vma,
				vma->vm_start,
				address >> PAGE_SHIFT,
				FUNC1(dev),
				vma->vm_page_prot);
}