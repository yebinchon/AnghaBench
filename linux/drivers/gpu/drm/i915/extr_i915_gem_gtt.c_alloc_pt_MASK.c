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
struct i915_page_table {int /*<<< orphan*/  used; int /*<<< orphan*/  base; } ;
struct i915_address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i915_page_table* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_GFP_ALLOW_FAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_page_table*) ; 
 struct i915_page_table* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i915_address_space*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct i915_page_table *FUNC6(struct i915_address_space *vm)
{
	struct i915_page_table *pt;

	pt = FUNC3(sizeof(*pt), I915_GFP_ALLOW_FAIL);
	if (FUNC5(!pt))
		return FUNC0(-ENOMEM);

	if (FUNC5(FUNC4(vm, &pt->base))) {
		FUNC2(pt);
		return FUNC0(-ENOMEM);
	}

	FUNC1(&pt->used, 0);
	return pt;
}