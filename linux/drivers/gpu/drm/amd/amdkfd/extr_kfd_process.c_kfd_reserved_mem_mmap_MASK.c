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
struct qcm_process_device {void* cwsr_kaddr; } ;
struct kfd_process_device {struct qcm_process_device qpd; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 scalar_t__ KFD_CWSR_TBA_TMA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VM_DONTCOPY ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int VM_IO ; 
 int VM_NORESERVE ; 
 int VM_PFNMAP ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 struct kfd_process_device* FUNC4 (struct kfd_dev*,struct kfd_process*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct vm_area_struct*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC7(struct kfd_dev *dev, struct kfd_process *process,
			  struct vm_area_struct *vma)
{
	struct kfd_process_device *pdd;
	struct qcm_process_device *qpd;

	if ((vma->vm_end - vma->vm_start) != KFD_CWSR_TBA_TMA_SIZE) {
		FUNC5("Incorrect CWSR mapping size.\n");
		return -EINVAL;
	}

	pdd = FUNC4(dev, process);
	if (!pdd)
		return -EINVAL;
	qpd = &pdd->qpd;

	qpd->cwsr_kaddr = (void *)FUNC1(GFP_KERNEL | __GFP_ZERO,
					FUNC3(KFD_CWSR_TBA_TMA_SIZE));
	if (!qpd->cwsr_kaddr) {
		FUNC5("Error allocating per process CWSR buffer.\n");
		return -ENOMEM;
	}

	vma->vm_flags |= VM_IO | VM_DONTCOPY | VM_DONTEXPAND
		| VM_NORESERVE | VM_DONTDUMP | VM_PFNMAP;
	/* Mapping pages to user process */
	return FUNC6(vma, vma->vm_start,
			       FUNC0(FUNC2(qpd->cwsr_kaddr)),
			       KFD_CWSR_TBA_TMA_SIZE, vma->vm_page_prot);
}