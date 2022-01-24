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
struct vm_area_struct {unsigned long vm_pgoff; unsigned long vm_end; unsigned long vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; } ;
struct qedr_ucontext {unsigned long dpi; unsigned long dpi_size; } ;
struct qedr_dev {unsigned long db_phys_addr; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,void*,void*,void*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*,...) ; 
 int EINVAL ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  QEDR_MSG_INIT ; 
 int VM_READ ; 
 struct qedr_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct qedr_ucontext* FUNC3 (struct ib_ucontext*) ; 
 int FUNC4 (struct vm_area_struct*,int,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qedr_ucontext*,unsigned long,unsigned long) ; 

int FUNC7(struct ib_ucontext *context, struct vm_area_struct *vma)
{
	struct qedr_ucontext *ucontext = FUNC3(context);
	struct qedr_dev *dev = FUNC2(context->device);
	unsigned long phys_addr = vma->vm_pgoff << PAGE_SHIFT;
	unsigned long len = (vma->vm_end - vma->vm_start);
	unsigned long dpi_start;

	dpi_start = dev->db_phys_addr + (ucontext->dpi * ucontext->dpi_size);

	FUNC0(dev, QEDR_MSG_INIT,
		 "mmap invoked with vm_start=0x%pK, vm_end=0x%pK,vm_pgoff=0x%pK; dpi_start=0x%pK dpi_size=0x%x\n",
		 (void *)vma->vm_start, (void *)vma->vm_end,
		 (void *)vma->vm_pgoff, (void *)dpi_start, ucontext->dpi_size);

	if ((vma->vm_start & (PAGE_SIZE - 1)) || (len & (PAGE_SIZE - 1))) {
		FUNC1(dev,
		       "failed mmap, addresses must be page aligned: start=0x%pK, end=0x%pK\n",
		       (void *)vma->vm_start, (void *)vma->vm_end);
		return -EINVAL;
	}

	if (!FUNC6(ucontext, phys_addr, len)) {
		FUNC1(dev, "failed mmap, vm_pgoff=0x%lx is not authorized\n",
		       vma->vm_pgoff);
		return -EINVAL;
	}

	if (phys_addr < dpi_start ||
	    ((phys_addr + len) > (dpi_start + ucontext->dpi_size))) {
		FUNC1(dev,
		       "failed mmap, pages are outside of dpi; page address=0x%pK, dpi_start=0x%pK, dpi_size=0x%x\n",
		       (void *)phys_addr, (void *)dpi_start,
		       ucontext->dpi_size);
		return -EINVAL;
	}

	if (vma->vm_flags & VM_READ) {
		FUNC1(dev, "failed mmap, cannot map doorbell bar for read\n");
		return -EINVAL;
	}

	vma->vm_page_prot = FUNC5(vma->vm_page_prot);
	return FUNC4(vma, vma->vm_start, vma->vm_pgoff, len,
				  vma->vm_page_prot);
}