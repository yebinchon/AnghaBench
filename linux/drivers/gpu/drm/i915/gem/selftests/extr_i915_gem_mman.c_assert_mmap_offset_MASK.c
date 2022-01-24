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
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int FUNC2 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC3 (struct drm_i915_private*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static bool FUNC5(struct drm_i915_private *i915,
			       unsigned long size,
			       int expected)
{
	struct drm_i915_gem_object *obj;
	int err;

	obj = FUNC3(i915, size);
	if (FUNC0(obj))
		return FUNC1(obj);

	err = FUNC2(obj);
	FUNC4(obj);

	return err == expected;
}