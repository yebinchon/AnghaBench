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
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct drm_i915_gem_object *obj;
	int err = -ENOMEM;

	/* Basic test to ensure we can create an object */

	obj = FUNC2(i915, PAGE_SIZE);
	if (FUNC0(obj)) {
		err = FUNC1(obj);
		FUNC4("i915_gem_object_create failed, err=%d\n", err);
		goto out;
	}

	err = 0;
	FUNC3(obj);
out:
	return err;
}