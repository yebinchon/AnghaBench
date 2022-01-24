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
struct i915_vma {unsigned int fence_size; int /*<<< orphan*/  obj; TYPE_1__ node; } ;
struct i915_fence_reg {int /*<<< orphan*/  id; TYPE_2__* i915; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_4__ {struct intel_uncore uncore; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int I830_FENCE_PITCH_SHIFT ; 
 int I830_FENCE_REG_VALID ; 
 int FUNC3 (unsigned int) ; 
 int I830_FENCE_START_MASK ; 
 int /*<<< orphan*/  I830_FENCE_TILING_Y_SHIFT ; 
 scalar_t__ I915_TILING_Y ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_vma*) ; 
 int FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  pipelined ; 

__attribute__((used)) static void FUNC12(struct i915_fence_reg *fence,
				 struct i915_vma *vma)
{
	u32 val;

	val = 0;
	if (vma) {
		unsigned int stride = FUNC5(vma->obj);

		FUNC2(!FUNC7(vma));
		FUNC2(vma->node.start & ~I830_FENCE_START_MASK);
		FUNC2(!FUNC11(vma->fence_size));
		FUNC2(!FUNC11(stride / 128));
		FUNC2(!FUNC4(vma->node.start, vma->fence_size));

		val = vma->node.start;
		if (FUNC6(vma->obj) == I915_TILING_Y)
			val |= FUNC0(I830_FENCE_TILING_Y_SHIFT);
		val |= FUNC3(vma->fence_size);
		val |= FUNC8(stride / 128) << I830_FENCE_PITCH_SHIFT;
		val |= I830_FENCE_REG_VALID;
	}

	if (!pipelined) {
		struct intel_uncore *uncore = &fence->i915->uncore;
		i915_reg_t reg = FUNC1(fence->id);

		FUNC10(uncore, reg, val);
		FUNC9(uncore, reg);
	}
}