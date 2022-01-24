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
struct i915_buddy_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_buddy_mm*,struct i915_buddy_block*,int) ; 
 struct i915_buddy_block* FUNC1 (struct i915_buddy_block*) ; 

__attribute__((used)) static void FUNC2(struct i915_buddy_mm *mm,
			   struct i915_buddy_block *block)
{
	struct i915_buddy_block *buddy;

	FUNC0(mm, block, false);

	buddy = FUNC1(block);
	if (buddy)
		FUNC0(mm, buddy, true);
}