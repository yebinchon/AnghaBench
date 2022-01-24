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
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct file {int dummy; } ;
struct drm_gem_object {int /*<<< orphan*/  dma_buf; scalar_t__ import_attach; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,struct vm_area_struct*) ; 
 int FUNC3 (struct drm_gem_object*,struct vm_area_struct*) ; 

int FUNC4(struct file *filp, struct vm_area_struct *vma)
{
	struct drm_gem_object *obj;
	int ret;

	/* set vm_area_struct. */
	ret = FUNC2(filp, vma);
	if (ret < 0) {
		FUNC0("failed to mmap.\n");
		return ret;
	}

	obj = vma->vm_private_data;

	if (obj->import_attach)
		return FUNC1(obj->dma_buf, vma, 0);

	return FUNC3(obj, vma);
}