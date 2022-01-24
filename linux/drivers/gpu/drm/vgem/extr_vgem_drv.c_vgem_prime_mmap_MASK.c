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
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; int vm_flags; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_file; } ;
struct drm_gem_object {scalar_t__ size; int /*<<< orphan*/  filp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int FUNC0 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct drm_gem_object *obj,
			   struct vm_area_struct *vma)
{
	int ret;

	if (obj->size < vma->vm_end - vma->vm_start)
		return -EINVAL;

	if (!obj->filp)
		return -ENODEV;

	ret = FUNC0(obj->filp, vma);
	if (ret)
		return ret;

	FUNC1(vma->vm_file);
	vma->vm_file = FUNC2(obj->filp);
	vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;
	vma->vm_page_prot = FUNC3(FUNC4(vma->vm_flags));

	return 0;
}