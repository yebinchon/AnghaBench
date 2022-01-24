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
struct live_active {int /*<<< orphan*/  retired; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; int /*<<< orphan*/  runtime_pm; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  I915_WAIT_LOCKED ; 
 scalar_t__ FUNC0 (struct live_active*) ; 
 int FUNC1 (struct live_active*) ; 
 struct live_active* FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct live_active*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	struct drm_i915_private *i915 = arg;
	struct live_active *active;
	intel_wakeref_t wakeref;
	int err = 0;

	/* Check that we get a callback when requests retire upon waiting */

	FUNC8(&i915->drm.struct_mutex);
	wakeref = FUNC6(&i915->runtime_pm);

	active = FUNC2(i915);
	if (FUNC0(active)) {
		err = FUNC1(active);
		goto err;
	}

	FUNC4(&active->base);
	if (!active->retired) {
		FUNC10("i915_active not retired after waiting!\n");
		err = -EINVAL;
	}

	FUNC3(active);

	if (FUNC5(i915, I915_WAIT_LOCKED))
		err = -EIO;

err:
	FUNC7(&i915->runtime_pm, wakeref);
	FUNC9(&i915->drm.struct_mutex);

	return err;
}