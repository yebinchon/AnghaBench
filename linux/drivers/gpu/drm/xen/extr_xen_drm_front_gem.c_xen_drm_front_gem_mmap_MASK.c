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
struct vm_area_struct {struct drm_gem_object* vm_private_data; } ;
struct file {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct vm_area_struct*) ; 
 int FUNC1 (struct xen_gem_object*,struct vm_area_struct*) ; 
 struct xen_gem_object* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct file *filp, struct vm_area_struct *vma)
{
	struct xen_gem_object *xen_obj;
	struct drm_gem_object *gem_obj;
	int ret;

	ret = FUNC0(filp, vma);
	if (ret < 0)
		return ret;

	gem_obj = vma->vm_private_data;
	xen_obj = FUNC2(gem_obj);
	return FUNC1(xen_obj, vma);
}