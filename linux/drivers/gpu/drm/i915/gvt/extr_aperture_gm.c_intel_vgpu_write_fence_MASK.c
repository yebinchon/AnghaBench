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
typedef  int /*<<< orphan*/  u64 ;
typedef  size_t u32 ;
struct TYPE_2__ {struct i915_fence_reg** regs; } ;
struct intel_vgpu {TYPE_1__ fence; struct intel_gvt* gvt; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct i915_fence_reg {int /*<<< orphan*/  id; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (struct intel_vgpu*) ; 

void FUNC9(struct intel_vgpu *vgpu,
		u32 fence, u64 value)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct drm_i915_private *dev_priv = gvt->dev_priv;
	struct i915_fence_reg *reg;
	i915_reg_t fence_reg_lo, fence_reg_hi;

	FUNC5(&dev_priv->runtime_pm);

	if (FUNC4(fence >= FUNC8(vgpu)))
		return;

	reg = vgpu->fence.regs[fence];
	if (FUNC4(!reg))
		return;

	fence_reg_lo = FUNC1(reg->id);
	fence_reg_hi = FUNC0(reg->id);

	FUNC2(fence_reg_lo, 0);
	FUNC3(fence_reg_lo);

	FUNC2(fence_reg_hi, FUNC7(value));
	FUNC2(fence_reg_lo, FUNC6(value));
	FUNC3(fence_reg_lo);
}