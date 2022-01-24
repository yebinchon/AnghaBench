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
struct vm_area_struct {unsigned long vm_pgoff; int vm_end; int vm_start; } ;
struct siw_uobj {int /*<<< orphan*/  addr; } ;
struct siw_ucontext {TYPE_1__* sdev; } ;
struct ib_ucontext {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  base_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,unsigned long,int) ; 
 struct siw_uobj* FUNC3 (struct siw_ucontext*,unsigned long,int) ; 
 struct siw_ucontext* FUNC4 (struct ib_ucontext*) ; 

int FUNC5(struct ib_ucontext *ctx, struct vm_area_struct *vma)
{
	struct siw_ucontext *uctx = FUNC4(ctx);
	struct siw_uobj *uobj;
	unsigned long off = vma->vm_pgoff;
	int size = vma->vm_end - vma->vm_start;
	int rv = -EINVAL;

	/*
	 * Must be page aligned
	 */
	if (vma->vm_start & (PAGE_SIZE - 1)) {
		FUNC0("siw: mmap not page aligned\n");
		goto out;
	}
	uobj = FUNC3(uctx, off, size);
	if (!uobj) {
		FUNC2(&uctx->sdev->base_dev, "mmap lookup failed: %lu, %u\n",
			off, size);
		goto out;
	}
	rv = FUNC1(vma, uobj->addr, 0);
	if (rv)
		FUNC0("remap_vmalloc_range failed: %lu, %u\n", off, size);
out:
	return rv;
}