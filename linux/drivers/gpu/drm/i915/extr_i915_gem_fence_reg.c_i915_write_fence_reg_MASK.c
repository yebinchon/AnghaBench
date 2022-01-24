#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {int start; } ;
struct i915_vma {unsigned int fence_size; TYPE_1__ node; int /*<<< orphan*/  obj; } ;
struct i915_fence_reg {int /*<<< orphan*/  id; TYPE_2__* i915; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_4__ {struct intel_uncore uncore; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int I830_FENCE_PITCH_SHIFT ; 
 int I830_FENCE_REG_VALID ; 
 int /*<<< orphan*/  I830_FENCE_TILING_Y_SHIFT ; 
 int FUNC4 (unsigned int) ; 
 int I915_FENCE_START_MASK ; 
 unsigned int I915_TILING_Y ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_vma*) ; 
 int FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 
 int /*<<< orphan*/  pipelined ; 

__attribute__((used)) static void FUNC13(struct i915_fence_reg *fence,
				 struct i915_vma *vma)
{
	u32 val;

	val = 0;
	if (vma) {
		unsigned int tiling = FUNC7(vma->obj);
		bool is_y_tiled = tiling == I915_TILING_Y;
		unsigned int stride = FUNC6(vma->obj);

		FUNC2(!FUNC8(vma));
		FUNC2(vma->node.start & ~I915_FENCE_START_MASK);
		FUNC2(!FUNC12(vma->fence_size));
		FUNC2(!FUNC5(vma->node.start, vma->fence_size));

		if (is_y_tiled && FUNC3(fence->i915))
			stride /= 128;
		else
			stride /= 512;
		FUNC2(!FUNC12(stride));

		val = vma->node.start;
		if (is_y_tiled)
			val |= FUNC0(I830_FENCE_TILING_Y_SHIFT);
		val |= FUNC4(vma->fence_size);
		val |= FUNC9(stride) << I830_FENCE_PITCH_SHIFT;

		val |= I830_FENCE_REG_VALID;
	}

	if (!pipelined) {
		struct intel_uncore *uncore = &fence->i915->uncore;
		i915_reg_t reg = FUNC1(fence->id);

		FUNC11(uncore, reg, val);
		FUNC10(uncore, reg);
	}
}