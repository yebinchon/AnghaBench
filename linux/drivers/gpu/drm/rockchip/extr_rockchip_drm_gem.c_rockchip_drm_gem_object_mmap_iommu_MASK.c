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
struct rockchip_gem_object {int /*<<< orphan*/  pages; } ;
struct drm_gem_object {unsigned int size; } ;

/* Variables and functions */
 int ENXIO ; 
 unsigned int PAGE_SHIFT ; 
 struct rockchip_gem_object* FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned long FUNC2 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC3(struct drm_gem_object *obj,
					      struct vm_area_struct *vma)
{
	struct rockchip_gem_object *rk_obj = FUNC0(obj);
	unsigned int count = obj->size >> PAGE_SHIFT;
	unsigned long user_count = FUNC2(vma);

	if (user_count == 0)
		return -ENXIO;

	return FUNC1(vma, rk_obj->pages, count);
}