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
struct i915_vma {int /*<<< orphan*/  display_alignment; struct drm_i915_gem_object* obj; } ;
struct drm_i915_gem_object {scalar_t__ pin_global; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_GTT_MIN_ALIGNMENT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_vma*) ; 

void
FUNC4(struct i915_vma *vma)
{
	struct drm_i915_gem_object *obj = vma->obj;

	FUNC1(obj);

	if (FUNC0(obj->pin_global == 0))
		return;

	if (--obj->pin_global == 0)
		vma->display_alignment = I915_GTT_MIN_ALIGNMENT;

	/* Bump the LRU to try and avoid premature eviction whilst flipping  */
	FUNC2(obj);

	FUNC3(vma);
}