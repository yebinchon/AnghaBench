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
struct i915_sw_fence {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_DRM_I915_SW_FENCE_CHECK_DAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i915_sw_fence*,struct i915_sw_fence const* const) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  i915_sw_fence_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC5(struct i915_sw_fence *fence,
				  const struct i915_sw_fence * const signaler)
{
	unsigned long flags;
	bool err;

	if (!FUNC0(CONFIG_DRM_I915_SW_FENCE_CHECK_DAG))
		return false;

	FUNC3(&i915_sw_fence_lock, flags);
	err = FUNC1(fence, signaler);
	FUNC2(fence);
	FUNC4(&i915_sw_fence_lock, flags);

	return err;
}