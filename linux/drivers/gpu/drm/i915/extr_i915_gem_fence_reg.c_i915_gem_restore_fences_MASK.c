#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i915_vma {int /*<<< orphan*/  obj; struct i915_fence_reg* fence; } ;
struct i915_fence_reg {int /*<<< orphan*/  vma; } ;
struct TYPE_2__ {int num_fences; struct i915_fence_reg* fence_regs; } ;
struct drm_i915_private {TYPE_1__ ggtt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_fence_reg*,struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct drm_i915_private *i915)
{
	int i;

	FUNC4(); /* keep obj alive as we dereference */
	for (i = 0; i < i915->ggtt.num_fences; i++) {
		struct i915_fence_reg *reg = &i915->ggtt.fence_regs[i];
		struct i915_vma *vma = FUNC1(reg->vma);

		FUNC0(vma && vma->fence != reg);

		/*
		 * Commit delayed tiling changes if we have an object still
		 * attached to the fence, otherwise just clear the fence.
		 */
		if (vma && !FUNC3(vma->obj))
			vma = NULL;

		FUNC2(reg, vma);
	}
	FUNC5();
}