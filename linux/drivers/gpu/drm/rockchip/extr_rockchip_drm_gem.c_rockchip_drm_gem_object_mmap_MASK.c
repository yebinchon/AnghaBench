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
struct vm_area_struct {int /*<<< orphan*/  vm_flags; } ;
struct rockchip_gem_object {scalar_t__ pages; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VM_PFNMAP ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*) ; 
 int FUNC1 (struct drm_gem_object*,struct vm_area_struct*) ; 
 int FUNC2 (struct drm_gem_object*,struct vm_area_struct*) ; 
 struct rockchip_gem_object* FUNC3 (struct drm_gem_object*) ; 

__attribute__((used)) static int FUNC4(struct drm_gem_object *obj,
					struct vm_area_struct *vma)
{
	int ret;
	struct rockchip_gem_object *rk_obj = FUNC3(obj);

	/*
	 * We allocated a struct page table for rk_obj, so clear
	 * VM_PFNMAP flag that was set by drm_gem_mmap_obj()/drm_gem_mmap().
	 */
	vma->vm_flags &= ~VM_PFNMAP;

	if (rk_obj->pages)
		ret = FUNC2(obj, vma);
	else
		ret = FUNC1(obj, vma);

	if (ret)
		FUNC0(vma);

	return ret;
}