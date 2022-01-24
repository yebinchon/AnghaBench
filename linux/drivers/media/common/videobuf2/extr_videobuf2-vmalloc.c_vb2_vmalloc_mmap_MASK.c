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
struct vm_area_struct {TYPE_1__* vm_ops; int /*<<< orphan*/ * vm_private_data; int /*<<< orphan*/  vm_flags; } ;
struct vb2_vmalloc_buf {int /*<<< orphan*/  handler; int /*<<< orphan*/  vaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* open ) (struct vm_area_struct*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  VM_DONTEXPAND ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 TYPE_1__ vb2_common_vm_ops ; 

__attribute__((used)) static int FUNC3(void *buf_priv, struct vm_area_struct *vma)
{
	struct vb2_vmalloc_buf *buf = buf_priv;
	int ret;

	if (!buf) {
		FUNC0("No memory to map\n");
		return -EINVAL;
	}

	ret = FUNC1(vma, buf->vaddr, 0);
	if (ret) {
		FUNC0("Remapping vmalloc memory, error: %d\n", ret);
		return ret;
	}

	/*
	 * Make sure that vm_areas for 2 buffers won't be merged together
	 */
	vma->vm_flags		|= VM_DONTEXPAND;

	/*
	 * Use common vm_area operations to track buffer refcount.
	 */
	vma->vm_private_data	= &buf->handler;
	vma->vm_ops		= &vb2_common_vm_ops;

	vma->vm_ops->open(vma);

	return 0;
}