#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_4__ {struct i915_fence_reg** regs; } ;
struct intel_vgpu {TYPE_1__ fence; struct intel_gvt* gvt; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct i915_fence_reg {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {TYPE_2__ vm; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; TYPE_3__ ggtt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_fence_reg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (struct intel_vgpu*) ; 

__attribute__((used)) static void FUNC8(struct intel_vgpu *vgpu)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct drm_i915_private *dev_priv = gvt->dev_priv;
	struct i915_fence_reg *reg;
	u32 i;

	if (FUNC0(!FUNC7(vgpu)))
		return;

	FUNC3(&dev_priv->runtime_pm);

	FUNC5(&dev_priv->ggtt.vm.mutex);
	FUNC1(vgpu);
	for (i = 0; i < FUNC7(vgpu); i++) {
		reg = vgpu->fence.regs[i];
		FUNC2(reg);
		vgpu->fence.regs[i] = NULL;
	}
	FUNC6(&dev_priv->ggtt.vm.mutex);

	FUNC4(&dev_priv->runtime_pm);
}