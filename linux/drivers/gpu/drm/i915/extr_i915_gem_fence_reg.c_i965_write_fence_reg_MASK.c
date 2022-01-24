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
typedef  int u64 ;
struct intel_uncore {int dummy; } ;
struct TYPE_3__ {unsigned int start; } ;
struct i915_vma {unsigned int fence_size; int /*<<< orphan*/  obj; TYPE_1__ node; } ;
struct i915_fence_reg {TYPE_2__* i915; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_4__ {struct intel_uncore uncore; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int GEN6_FENCE_PITCH_SHIFT ; 
 scalar_t__ I915_TILING_Y ; 
 int I965_FENCE_PAGE ; 
 int I965_FENCE_PITCH_SHIFT ; 
 int I965_FENCE_REG_VALID ; 
 int /*<<< orphan*/  I965_FENCE_TILING_Y_SHIFT ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  pipelined ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct i915_fence_reg *fence,
				 struct i915_vma *vma)
{
	i915_reg_t fence_reg_lo, fence_reg_hi;
	int fence_pitch_shift;
	u64 val;

	if (FUNC6(fence->i915) >= 6) {
		fence_reg_lo = FUNC4(fence->id);
		fence_reg_hi = FUNC3(fence->id);
		fence_pitch_shift = GEN6_FENCE_PITCH_SHIFT;

	} else {
		fence_reg_lo = FUNC2(fence->id);
		fence_reg_hi = FUNC1(fence->id);
		fence_pitch_shift = I965_FENCE_PITCH_SHIFT;
	}

	val = 0;
	if (vma) {
		unsigned int stride = FUNC8(vma->obj);

		FUNC5(!FUNC10(vma));
		FUNC5(!FUNC7(vma->node.start, I965_FENCE_PAGE));
		FUNC5(!FUNC7(vma->fence_size, I965_FENCE_PAGE));
		FUNC5(!FUNC7(stride, 128));

		val = (vma->node.start + vma->fence_size - I965_FENCE_PAGE) << 32;
		val |= vma->node.start;
		val |= (u64)((stride / 128) - 1) << fence_pitch_shift;
		if (FUNC9(vma->obj) == I915_TILING_Y)
			val |= FUNC0(I965_FENCE_TILING_Y_SHIFT);
		val |= I965_FENCE_REG_VALID;
	}

	if (!pipelined) {
		struct intel_uncore *uncore = &fence->i915->uncore;

		/*
		 * To w/a incoherency with non-atomic 64-bit register updates,
		 * we split the 64-bit update into two 32-bit writes. In order
		 * for a partial fence not to be evaluated between writes, we
		 * precede the update with write to turn off the fence register,
		 * and only enable the fence as the last step.
		 *
		 * For extra levels of paranoia, we make sure each step lands
		 * before applying the next step.
		 */
		FUNC12(uncore, fence_reg_lo, 0);
		FUNC11(uncore, fence_reg_lo);

		FUNC12(uncore, fence_reg_hi, FUNC14(val));
		FUNC12(uncore, fence_reg_lo, FUNC13(val));
		FUNC11(uncore, fence_reg_lo);
	}
}