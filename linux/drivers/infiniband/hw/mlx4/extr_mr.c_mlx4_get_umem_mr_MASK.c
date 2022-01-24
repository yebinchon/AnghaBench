#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct vm_area_struct {scalar_t__ vm_end; unsigned long vm_start; int vm_flags; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int IB_ACCESS_LOCAL_WRITE ; 
 int VM_WRITE ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vm_area_struct* FUNC1 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ib_umem* FUNC3 (struct ib_udata*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ib_umem *FUNC6(struct ib_udata *udata, u64 start,
					u64 length, int access_flags)
{
	/*
	 * Force registering the memory as writable if the underlying pages
	 * are writable.  This is so rereg can change the access permissions
	 * from readable to writable without having to run through ib_umem_get
	 * again
	 */
	if (!FUNC2(access_flags)) {
		unsigned long untagged_start = FUNC4(start);
		struct vm_area_struct *vma;

		FUNC0(&current->mm->mmap_sem);
		/*
		 * FIXME: Ideally this would iterate over all the vmas that
		 * cover the memory, but for now it requires a single vma to
		 * entirely cover the MR to support RO mappings.
		 */
		vma = FUNC1(current->mm, untagged_start);
		if (vma && vma->vm_end >= untagged_start + length &&
		    vma->vm_start <= untagged_start) {
			if (vma->vm_flags & VM_WRITE)
				access_flags |= IB_ACCESS_LOCAL_WRITE;
		} else {
			access_flags |= IB_ACCESS_LOCAL_WRITE;
		}

		FUNC5(&current->mm->mmap_sem);
	}

	return FUNC3(udata, start, length, access_flags, 0);
}