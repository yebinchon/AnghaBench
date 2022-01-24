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
typedef  int u64 ;
struct TYPE_4__ {int /*<<< orphan*/  idle_work; int /*<<< orphan*/  retire_work; } ;
struct TYPE_3__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_2__ gem; int /*<<< orphan*/  gt; TYPE_1__ drm; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_ENGINES ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int DROP_ACTIVE ; 
 int DROP_ALL ; 
 int DROP_BOUND ; 
 int DROP_FREED ; 
 int DROP_IDLE ; 
 int DROP_RESET_ACTIVE ; 
 int DROP_RESET_SEQNO ; 
 int DROP_RETIRE ; 
 int DROP_SHRINK_ALL ; 
 int DROP_UNBOUND ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I915_IDLE_ENGINES_TIMEOUT ; 
 int /*<<< orphan*/  I915_SHRINK_BOUND ; 
 int /*<<< orphan*/  I915_SHRINK_UNBOUND ; 
 int I915_WAIT_INTERRUPTIBLE ; 
 int I915_WAIT_LOCKED ; 
 int /*<<< orphan*/  LONG_MAX ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int FUNC8 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(void *data, u64 val)
{
	struct drm_i915_private *i915 = data;

	FUNC0("Dropping caches: 0x%08llx [0x%08llx]\n",
		  val, val & DROP_ALL);

	if (val & DROP_RESET_ACTIVE &&
	    FUNC17(FUNC10(&i915->gt),
		     I915_IDLE_ENGINES_TIMEOUT))
		FUNC13(&i915->gt);

	/* No need to check and wait for gpu resets, only libdrm auto-restarts
	 * on ioctls on -EAGAIN. */
	if (val & (DROP_ACTIVE | DROP_IDLE | DROP_RETIRE | DROP_RESET_SEQNO)) {
		int ret;

		ret = FUNC15(&i915->drm.struct_mutex);
		if (ret)
			return ret;

		/*
		 * To finish the flush of the idle_worker, we must complete
		 * the switch-to-kernel-context, which requires a double
		 * pass through wait_for_idle: first queues the switch,
		 * second waits for the switch.
		 */
		if (ret == 0 && val & (DROP_IDLE | DROP_ACTIVE))
			ret = FUNC8(i915,
						     I915_WAIT_INTERRUPTIBLE |
						     I915_WAIT_LOCKED,
						     MAX_SCHEDULE_TIMEOUT);

		if (ret == 0 && val & DROP_IDLE)
			ret = FUNC8(i915,
						     I915_WAIT_INTERRUPTIBLE |
						     I915_WAIT_LOCKED,
						     MAX_SCHEDULE_TIMEOUT);

		if (val & DROP_RETIRE)
			FUNC9(i915);

		FUNC16(&i915->drm.struct_mutex);

		if (ret == 0 && val & DROP_IDLE)
			ret = FUNC12(&i915->gt);
	}

	if (val & DROP_RESET_ACTIVE && FUNC14(&i915->gt))
		FUNC11(&i915->gt, ALL_ENGINES, 0, NULL);

	FUNC3(GFP_KERNEL);
	if (val & DROP_BOUND)
		FUNC6(i915, LONG_MAX, NULL, I915_SHRINK_BOUND);

	if (val & DROP_UNBOUND)
		FUNC6(i915, LONG_MAX, NULL, I915_SHRINK_UNBOUND);

	if (val & DROP_SHRINK_ALL)
		FUNC7(i915);
	FUNC4(GFP_KERNEL);

	if (val & DROP_IDLE) {
		FUNC1(&i915->gem.retire_work);
		FUNC2(&i915->gem.idle_work);
	}

	if (val & DROP_FREED)
		FUNC5(i915);

	return 0;
}