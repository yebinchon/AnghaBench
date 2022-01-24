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
struct vm_area_struct {int dummy; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;
struct drm_gem_cma_object {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_cma_object*,struct vm_area_struct*) ; 
 int FUNC1 (struct drm_gem_object*,int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 struct drm_gem_cma_object* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_gem_object *obj,
			   struct vm_area_struct *vma)
{
	struct drm_gem_cma_object *cma_obj;
	int ret;

	ret = FUNC1(obj, obj->size, vma);
	if (ret < 0)
		return ret;

	cma_obj = FUNC2(obj);
	return FUNC0(cma_obj, vma);
}