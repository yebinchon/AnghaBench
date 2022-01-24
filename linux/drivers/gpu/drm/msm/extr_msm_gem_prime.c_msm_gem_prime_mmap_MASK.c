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
struct vm_area_struct {int /*<<< orphan*/  vm_private_data; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_object*,int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 

int FUNC2(struct drm_gem_object *obj, struct vm_area_struct *vma)
{
	int ret;

	ret = FUNC0(obj, obj->size, vma);
	if (ret < 0)
		return ret;

	return FUNC1(vma->vm_private_data, vma);
}