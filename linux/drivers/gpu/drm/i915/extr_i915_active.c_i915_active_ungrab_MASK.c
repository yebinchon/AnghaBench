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
struct i915_active {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I915_ACTIVE_GRAB_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct i915_active*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_active*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct i915_active *ref)
{
	FUNC0(!FUNC3(I915_ACTIVE_GRAB_BIT, &ref->flags));

	FUNC2(ref);
	FUNC1(ref);
}