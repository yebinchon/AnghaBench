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
struct xen_gem_object {int /*<<< orphan*/  num_pages; int /*<<< orphan*/  pages; } ;
struct sg_table {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct sg_table* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xen_gem_object* FUNC2 (struct drm_gem_object*) ; 

struct sg_table *FUNC3(struct drm_gem_object *gem_obj)
{
	struct xen_gem_object *xen_obj = FUNC2(gem_obj);

	if (!xen_obj->pages)
		return FUNC0(-ENOMEM);

	return FUNC1(xen_obj->pages, xen_obj->num_pages);
}