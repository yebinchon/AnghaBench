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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {TYPE_2__* stolen; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sg_table*) ; 
 int FUNC1 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*,struct sg_table*,int /*<<< orphan*/ ) ; 
 struct sg_table* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_i915_gem_object *obj)
{
	struct sg_table *pages =
		FUNC3(obj->base.dev,
					     obj->stolen->start,
					     obj->stolen->size);
	if (FUNC0(pages))
		return FUNC1(pages);

	FUNC2(obj, pages, obj->stolen->size);

	return 0;
}