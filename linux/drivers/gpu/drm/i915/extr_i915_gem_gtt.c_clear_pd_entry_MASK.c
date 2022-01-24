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
struct i915_page_scratch {int /*<<< orphan*/  encode; } ;
struct i915_page_directory {int /*<<< orphan*/ ** entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_page_directory* const) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_page_directory* const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned short const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC6(struct i915_page_directory * const pd,
	       const unsigned short idx,
	       const struct i915_page_scratch * const scratch)
{
	FUNC0(FUNC2(FUNC4(pd)) == 0);

	FUNC5(FUNC3(pd), idx, scratch->encode);
	pd->entry[idx] = NULL;
	FUNC1(FUNC4(pd));
}