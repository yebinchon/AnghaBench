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
struct vm_area_struct {unsigned long vm_pgoff; } ;
struct kfd_process {int dummy; } ;
struct kfd_dev {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct kfd_process*) ; 
 unsigned int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
#define  KFD_MMAP_TYPE_DOORBELL 131 
#define  KFD_MMAP_TYPE_EVENTS 130 
 unsigned long KFD_MMAP_TYPE_MASK ; 
#define  KFD_MMAP_TYPE_MMIO 129 
#define  KFD_MMAP_TYPE_RESERVED_MEM 128 
 int FUNC3 (struct kfd_process*) ; 
 int /*<<< orphan*/  current ; 
 struct kfd_dev* FUNC4 (unsigned int) ; 
 int FUNC5 (struct kfd_dev*,struct kfd_process*,struct vm_area_struct*) ; 
 int FUNC6 (struct kfd_process*,struct vm_area_struct*) ; 
 struct kfd_process* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct kfd_dev*,struct kfd_process*,struct vm_area_struct*) ; 
 int FUNC9 (struct kfd_dev*,struct kfd_process*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC10(struct file *filp, struct vm_area_struct *vma)
{
	struct kfd_process *process;
	struct kfd_dev *dev = NULL;
	unsigned long vm_pgoff;
	unsigned int gpu_id;

	process = FUNC7(current);
	if (FUNC0(process))
		return FUNC3(process);

	vm_pgoff = vma->vm_pgoff;
	vma->vm_pgoff = FUNC2(vm_pgoff);
	gpu_id = FUNC1(vm_pgoff);
	if (gpu_id)
		dev = FUNC4(gpu_id);

	switch (vm_pgoff & KFD_MMAP_TYPE_MASK) {
	case KFD_MMAP_TYPE_DOORBELL:
		if (!dev)
			return -ENODEV;
		return FUNC5(dev, process, vma);

	case KFD_MMAP_TYPE_EVENTS:
		return FUNC6(process, vma);

	case KFD_MMAP_TYPE_RESERVED_MEM:
		if (!dev)
			return -ENODEV;
		return FUNC9(dev, process, vma);
	case KFD_MMAP_TYPE_MMIO:
		if (!dev)
			return -ENODEV;
		return FUNC8(dev, process, vma);
	}

	return -EFAULT;
}