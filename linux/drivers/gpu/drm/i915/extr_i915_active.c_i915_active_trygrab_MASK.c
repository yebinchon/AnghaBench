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
struct i915_active {int /*<<< orphan*/  count; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_ACTIVE_GRAB_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct i915_active*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_active*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC4(struct i915_active *ref)
{
	FUNC2(ref);

	if (FUNC3(I915_ACTIVE_GRAB_BIT, &ref->flags))
		return false;

	if (!FUNC1(&ref->count, 1, 0)) {
		FUNC0(ref);
		return false;
	}

	return true;
}