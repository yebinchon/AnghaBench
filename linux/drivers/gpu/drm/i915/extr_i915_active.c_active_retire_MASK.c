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
struct i915_active {int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC1 (struct i915_active*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct i915_active *ref)
{
	FUNC0(!FUNC3(&ref->count));
	if (FUNC2(&ref->count, -1, 1))
		return;

	/* One active may be flushed from inside the acquire of another */
	FUNC4(&ref->mutex, SINGLE_DEPTH_NESTING);
	FUNC1(ref);
}