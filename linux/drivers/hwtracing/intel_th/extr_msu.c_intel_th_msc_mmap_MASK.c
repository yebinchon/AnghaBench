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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_flags; int /*<<< orphan*/ * vm_ops; int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_pgoff; TYPE_1__* vm_file; } ;
struct msc_iter {struct msc* msc; } ;
struct msc {scalar_t__ mode; scalar_t__ nr_pages; int /*<<< orphan*/  user_count; int /*<<< orphan*/  mmap_count; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct msc_iter* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MSC_MODE_MULTI ; 
 scalar_t__ MSC_MODE_SINGLE ; 
 scalar_t__ PAGE_SHIFT ; 
 int VM_DONTCOPY ; 
 int VM_DONTEXPAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  msc_mmap_ops ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct vm_area_struct *vma)
{
	unsigned long size = vma->vm_end - vma->vm_start;
	struct msc_iter *iter = vma->vm_file->private_data;
	struct msc *msc = iter->msc;
	int ret = -EINVAL;

	if (!size || FUNC3(size))
		return -EINVAL;

	if (vma->vm_pgoff)
		return -EINVAL;

	/* grab user_count once per mmap; drop in msc_mmap_close() */
	if (!FUNC1(&msc->user_count))
		return -EINVAL;

	if (msc->mode != MSC_MODE_SINGLE &&
	    msc->mode != MSC_MODE_MULTI)
		goto out;

	if (size >> PAGE_SHIFT != msc->nr_pages)
		goto out;

	FUNC2(&msc->mmap_count, 1);
	ret = 0;

out:
	if (ret)
		FUNC0(&msc->user_count);

	vma->vm_page_prot = FUNC4(vma->vm_page_prot);
	vma->vm_flags |= VM_DONTEXPAND | VM_DONTCOPY;
	vma->vm_ops = &msc_mmap_ops;
	return ret;
}