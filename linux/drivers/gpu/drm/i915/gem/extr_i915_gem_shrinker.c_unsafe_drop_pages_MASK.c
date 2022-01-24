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
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 unsigned long I915_GEM_OBJECT_UNBIND_ACTIVE ; 
 int /*<<< orphan*/  I915_MM_SHRINKER ; 
 unsigned long I915_SHRINK_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_gem_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC2 (struct drm_i915_gem_object*,unsigned long) ; 

__attribute__((used)) static bool FUNC3(struct drm_i915_gem_object *obj,
			      unsigned long shrink)
{
	unsigned long flags;

	flags = 0;
	if (shrink & I915_SHRINK_ACTIVE)
		flags = I915_GEM_OBJECT_UNBIND_ACTIVE;

	if (FUNC2(obj, flags) == 0)
		FUNC0(obj, I915_MM_SHRINKER);

	return !FUNC1(obj);
}