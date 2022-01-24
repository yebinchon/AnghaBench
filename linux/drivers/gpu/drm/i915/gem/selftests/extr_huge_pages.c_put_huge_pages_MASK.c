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
struct sg_table {int dummy; } ;
struct TYPE_2__ {int dirty; int /*<<< orphan*/  madv; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_MADV_WILLNEED ; 
 int /*<<< orphan*/  FUNC0 (struct sg_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*,struct sg_table*) ; 

__attribute__((used)) static void FUNC2(struct drm_i915_gem_object *obj,
			   struct sg_table *pages)
{
	FUNC1(obj, pages);
	FUNC0(pages);

	obj->mm.dirty = false;
	obj->mm.madv = I915_MADV_WILLNEED;
}