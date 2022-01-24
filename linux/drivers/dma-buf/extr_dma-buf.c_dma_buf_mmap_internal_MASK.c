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
struct vm_area_struct {scalar_t__ vm_pgoff; } ;
struct file {struct dma_buf* private_data; } ;
struct dma_buf {scalar_t__ size; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* mmap ) (struct dma_buf*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct file*) ; 
 int FUNC1 (struct dma_buf*,struct vm_area_struct*) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct file *file, struct vm_area_struct *vma)
{
	struct dma_buf *dmabuf;

	if (!FUNC0(file))
		return -EINVAL;

	dmabuf = file->private_data;

	/* check if buffer supports mmap */
	if (!dmabuf->ops->mmap)
		return -EINVAL;

	/* check for overflowing the buffer's size */
	if (vma->vm_pgoff + FUNC2(vma) >
	    dmabuf->size >> PAGE_SHIFT)
		return -EINVAL;

	return dmabuf->ops->mmap(dmabuf, vma);
}