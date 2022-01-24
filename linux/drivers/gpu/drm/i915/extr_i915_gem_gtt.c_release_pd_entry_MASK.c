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
struct i915_page_table {int /*<<< orphan*/  used; } ;
struct i915_page_scratch {int dummy; } ;
struct i915_page_directory {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_page_directory* const,unsigned short const,struct i915_page_scratch const* const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC5(struct i915_page_directory * const pd,
		 const unsigned short idx,
		 struct i915_page_table * const pt,
		 const struct i915_page_scratch * const scratch)
{
	bool free = false;

	if (FUNC0(&pt->used, -1, 1))
		return false;

	FUNC3(&pd->lock);
	if (FUNC1(&pt->used)) {
		FUNC2(pd, idx, scratch);
		free = true;
	}
	FUNC4(&pd->lock);

	return free;
}