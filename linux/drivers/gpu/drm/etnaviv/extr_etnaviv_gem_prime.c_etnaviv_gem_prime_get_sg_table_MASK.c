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
struct sg_table {int dummy; } ;
struct etnaviv_gem_object {int /*<<< orphan*/  pages; } ;
struct drm_gem_object {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct sg_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC1 (int) ; 
 struct sg_table* FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct etnaviv_gem_object* FUNC3 (struct drm_gem_object*) ; 

struct sg_table *FUNC4(struct drm_gem_object *obj)
{
	struct etnaviv_gem_object *etnaviv_obj = FUNC3(obj);
	int npages = obj->size >> PAGE_SHIFT;

	if (FUNC1(!etnaviv_obj->pages))  /* should have already pinned! */
		return FUNC0(-EINVAL);

	return FUNC2(etnaviv_obj->pages, npages);
}