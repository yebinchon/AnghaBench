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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pages_pin_count; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_gem_object*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct drm_i915_gem_object *obj)
{
	int err;

	err = FUNC5(&obj->mm.lock);
	if (err)
		return err;

	if (FUNC8(!FUNC3(obj))) {
		FUNC0(FUNC4(obj));

		err = FUNC1(obj);
		if (err)
			goto unlock;

		FUNC7();
	}
	FUNC2(&obj->mm.pages_pin_count);

unlock:
	FUNC6(&obj->mm.lock);
	return err;
}