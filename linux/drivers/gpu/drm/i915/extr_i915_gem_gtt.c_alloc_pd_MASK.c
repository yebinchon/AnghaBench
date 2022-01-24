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
struct i915_page_directory {int dummy; } ;
struct i915_address_space {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i915_page_directory* FUNC0 (int /*<<< orphan*/ ) ; 
 struct i915_page_directory* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_page_directory*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_page_directory*) ; 
 int FUNC4 (struct i915_address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct i915_page_directory *FUNC6(struct i915_address_space *vm)
{
	struct i915_page_directory *pd;

	pd = FUNC1(sizeof(*pd));
	if (FUNC5(!pd))
		return FUNC0(-ENOMEM);

	if (FUNC5(FUNC4(vm, FUNC3(pd)))) {
		FUNC2(pd);
		return FUNC0(-ENOMEM);
	}

	return pd;
}