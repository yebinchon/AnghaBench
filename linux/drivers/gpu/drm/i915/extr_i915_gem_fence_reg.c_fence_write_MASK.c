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
struct i915_vma {int dummy; } ;
struct i915_fence_reg {int dirty; int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_fence_reg*,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_fence_reg*,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_fence_reg*,struct i915_vma*) ; 

__attribute__((used)) static void FUNC4(struct i915_fence_reg *fence,
			struct i915_vma *vma)
{
	/*
	 * Previous access through the fence register is marshalled by
	 * the mb() inside the fault handlers (i915_gem_release_mmaps)
	 * and explicitly managed for internal users.
	 */

	if (FUNC0(fence->i915, 2))
		FUNC1(fence, vma);
	else if (FUNC0(fence->i915, 3))
		FUNC2(fence, vma);
	else
		FUNC3(fence, vma);

	/*
	 * Access through the fenced region afterwards is
	 * ordered by the posting reads whilst writing the registers.
	 */

	fence->dirty = false;
}