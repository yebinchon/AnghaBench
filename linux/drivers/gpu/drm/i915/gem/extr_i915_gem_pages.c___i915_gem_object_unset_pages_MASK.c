#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sg_table {int dummy; } ;
struct TYPE_3__ {scalar_t__ sg; scalar_t__ phys; } ;
struct TYPE_4__ {TYPE_1__ page_sizes; int /*<<< orphan*/ * mapping; int /*<<< orphan*/  pages; } ;
struct drm_i915_gem_object {TYPE_2__ mm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 struct sg_table* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

struct sg_table *
FUNC9(struct drm_i915_gem_object *obj)
{
	struct sg_table *pages;

	pages = FUNC2(&obj->mm.pages);
	if (FUNC0(pages))
		return pages;

	FUNC3(obj);

	if (obj->mm.mapping) {
		void *ptr;

		ptr = FUNC7(obj->mm.mapping);
		if (FUNC4(ptr))
			FUNC8(ptr);
		else
			FUNC6(FUNC5(ptr));

		obj->mm.mapping = NULL;
	}

	FUNC1(obj);
	obj->mm.page_sizes.phys = obj->mm.page_sizes.sg = 0;

	return pages;
}