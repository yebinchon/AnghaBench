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
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char*,long,char*) ; 
 unsigned int I915_WAIT_LOCKED ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 (struct drm_i915_private*,unsigned int,long) ; 

int FUNC5(struct drm_i915_private *i915,
			   unsigned int flags, long timeout)
{
	/* If the device is asleep, we have no requests outstanding */
	if (!FUNC2(&i915->gt))
		return 0;

	FUNC0("flags=%x (%s), timeout=%ld%s\n",
		  flags, flags & I915_WAIT_LOCKED ? "locked" : "unlocked",
		  timeout, timeout == MAX_SCHEDULE_TIMEOUT ? " (forever)" : "");

	timeout = FUNC4(i915, flags, timeout);
	if (timeout < 0)
		return timeout;

	if (flags & I915_WAIT_LOCKED) {
		FUNC3(&i915->drm.struct_mutex);

		FUNC1(i915);
	}

	return 0;
}