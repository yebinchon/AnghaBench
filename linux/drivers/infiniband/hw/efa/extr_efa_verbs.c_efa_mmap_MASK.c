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
typedef  int u64 ;
struct vm_area_struct {int vm_end; int vm_start; int vm_pgoff; int vm_flags; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;
struct efa_ucontext {int dummy; } ;
struct efa_dev {int /*<<< orphan*/  ibdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int VM_EXEC ; 
 int VM_SHARED ; 
 int FUNC0 (struct efa_dev*,struct efa_ucontext*,struct vm_area_struct*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct efa_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct efa_ucontext* FUNC3 (struct ib_ucontext*) ; 

int FUNC4(struct ib_ucontext *ibucontext,
	     struct vm_area_struct *vma)
{
	struct efa_ucontext *ucontext = FUNC3(ibucontext);
	struct efa_dev *dev = FUNC2(ibucontext->device);
	u64 length = vma->vm_end - vma->vm_start;
	u64 key = vma->vm_pgoff << PAGE_SHIFT;

	FUNC1(&dev->ibdev,
		  "start %#lx, end %#lx, length = %#llx, key = %#llx\n",
		  vma->vm_start, vma->vm_end, length, key);

	if (length % PAGE_SIZE != 0 || !(vma->vm_flags & VM_SHARED)) {
		FUNC1(&dev->ibdev,
			  "length[%#llx] is not page size aligned[%#lx] or VM_SHARED is not set [%#lx]\n",
			  length, PAGE_SIZE, vma->vm_flags);
		return -EINVAL;
	}

	if (vma->vm_flags & VM_EXEC) {
		FUNC1(&dev->ibdev, "Mapping executable pages is not permitted\n");
		return -EPERM;
	}

	return FUNC0(dev, ucontext, vma, key, length);
}