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
struct i915_vma {struct i915_fence_reg* fence; TYPE_1__* vm; int /*<<< orphan*/  obj; } ;
struct i915_ggtt {int /*<<< orphan*/  fence_list; } ;
struct i915_fence_reg {int /*<<< orphan*/  pin_count; struct i915_vma* vma; int /*<<< orphan*/  link; int /*<<< orphan*/  dirty; } ;
struct TYPE_2__ {int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_fence_reg*) ; 
 int FUNC2 (struct i915_fence_reg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct i915_fence_reg* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct i915_fence_reg*,struct i915_vma*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct i915_ggtt* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct i915_vma *vma)
{
	struct i915_ggtt *ggtt = FUNC9(vma->vm);
	struct i915_fence_reg *fence;
	struct i915_vma *set = FUNC8(vma->obj) ? vma : NULL;
	int err;

	/* Just update our place in the LRU if our fence is getting reused. */
	if (vma->fence) {
		fence = vma->fence;
		FUNC0(fence->vma != vma);
		FUNC4(&fence->pin_count);
		if (!fence->dirty) {
			FUNC10(&fence->link, &ggtt->fence_list);
			return 0;
		}
	} else if (set) {
		fence = FUNC6(vma->vm->i915);
		if (FUNC1(fence))
			return FUNC2(fence);

		FUNC0(FUNC5(&fence->pin_count));
		FUNC4(&fence->pin_count);
	} else {
		return 0;
	}

	err = FUNC7(fence, set);
	if (err)
		goto out_unpin;

	FUNC0(fence->vma != set);
	FUNC0(vma->fence != (set ? fence : NULL));

	if (set)
		return 0;

out_unpin:
	FUNC3(&fence->pin_count);
	return err;
}