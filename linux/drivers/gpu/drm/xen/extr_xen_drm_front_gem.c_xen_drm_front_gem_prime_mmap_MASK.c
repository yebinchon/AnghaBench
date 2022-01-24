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
struct xen_gem_object {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_object*,int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int FUNC1 (struct xen_gem_object*,struct vm_area_struct*) ; 
 struct xen_gem_object* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_gem_object *gem_obj,
				 struct vm_area_struct *vma)
{
	struct xen_gem_object *xen_obj;
	int ret;

	ret = FUNC0(gem_obj, gem_obj->size, vma);
	if (ret < 0)
		return ret;

	xen_obj = FUNC2(gem_obj);
	return FUNC1(xen_obj, vma);
}