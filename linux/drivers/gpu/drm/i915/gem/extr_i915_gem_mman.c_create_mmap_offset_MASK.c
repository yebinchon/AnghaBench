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
struct TYPE_3__ {int /*<<< orphan*/  retire_work; } ;
struct drm_i915_private {TYPE_1__ gem; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_WAIT_INTERRUPTIBLE ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct drm_i915_gem_object *obj)
{
	struct drm_i915_private *i915 = FUNC5(obj->base.dev);
	int err;

	err = FUNC0(&obj->base);
	if (FUNC4(!err))
		return 0;

	/* Attempt to reap some mmap space from dead objects */
	do {
		err = FUNC3(i915,
					     I915_WAIT_INTERRUPTIBLE,
					     MAX_SCHEDULE_TIMEOUT);
		if (err)
			break;

		FUNC2(i915);
		err = FUNC0(&obj->base);
		if (!err)
			break;

	} while (FUNC1(&i915->gem.retire_work));

	return err;
}