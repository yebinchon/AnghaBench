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
struct i915_active {int (* active ) (struct i915_active*) ;int /*<<< orphan*/  mutex; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_active*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_active*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i915_active*) ; 

int FUNC8(struct i915_active *ref)
{
	int err;

	FUNC4(ref);
	if (FUNC0(&ref->count, 1, 0))
		return 0;

	err = FUNC5(&ref->mutex);
	if (err)
		return err;

	if (!FUNC2(&ref->count) && ref->active)
		err = ref->active(ref);
	if (!err) {
		FUNC3(ref);
		FUNC1(&ref->count);
	}

	FUNC6(&ref->mutex);

	return err;
}