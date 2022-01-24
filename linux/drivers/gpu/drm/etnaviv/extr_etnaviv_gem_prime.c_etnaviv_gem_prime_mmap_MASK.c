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
struct vm_area_struct {int dummy; } ;
struct etnaviv_gem_object {TYPE_1__* ops; } ;
struct drm_gem_object {int /*<<< orphan*/  size; } ;
struct TYPE_2__ {int (* mmap ) (struct etnaviv_gem_object*,struct vm_area_struct*) ;} ;

/* Variables and functions */
 int FUNC0 (struct drm_gem_object*,int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int FUNC1 (struct etnaviv_gem_object*,struct vm_area_struct*) ; 
 struct etnaviv_gem_object* FUNC2 (struct drm_gem_object*) ; 

int FUNC3(struct drm_gem_object *obj,
			   struct vm_area_struct *vma)
{
	struct etnaviv_gem_object *etnaviv_obj = FUNC2(obj);
	int ret;

	ret = FUNC0(obj, obj->size, vma);
	if (ret < 0)
		return ret;

	return etnaviv_obj->ops->mmap(etnaviv_obj, vma);
}