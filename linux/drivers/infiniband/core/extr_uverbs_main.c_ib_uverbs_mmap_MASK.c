#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {int dummy; } ;
struct ib_uverbs_file {TYPE_3__* device; } ;
struct ib_ucontext {TYPE_2__* device; } ;
struct file {struct ib_uverbs_file* private_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  disassociate_srcu; } ;
struct TYPE_4__ {int (* mmap ) (struct ib_ucontext*,struct vm_area_struct*) ;} ;
struct TYPE_5__ {TYPE_1__ ops; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ib_ucontext*) ; 
 int FUNC1 (struct ib_ucontext*) ; 
 struct ib_ucontext* FUNC2 (struct ib_uverbs_file*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct ib_ucontext*,struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC6(struct file *filp, struct vm_area_struct *vma)
{
	struct ib_uverbs_file *file = filp->private_data;
	struct ib_ucontext *ucontext;
	int ret = 0;
	int srcu_key;

	srcu_key = FUNC3(&file->device->disassociate_srcu);
	ucontext = FUNC2(file);
	if (FUNC0(ucontext)) {
		ret = FUNC1(ucontext);
		goto out;
	}

	ret = ucontext->device->ops.mmap(ucontext, vma);
out:
	FUNC4(&file->device->disassociate_srcu, srcu_key);
	return ret;
}