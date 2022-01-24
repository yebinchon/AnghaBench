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
struct i915_buddy_mm {int dummy; } ;
struct i915_buddy_block {int /*<<< orphan*/  parent; int /*<<< orphan*/  header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_buddy_mm*,struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct i915_buddy_mm *mm,
			     struct i915_buddy_block *block,
			     bool buddy)
{
	FUNC4("block info: header=%llx, state=%u, order=%d, offset=%llx size=%llx root=%s buddy=%s\n",
	       block->header,
	       FUNC3(block),
	       FUNC1(block),
	       FUNC0(block),
	       FUNC2(mm, block),
	       FUNC5(!block->parent),
	       FUNC5(buddy));
}