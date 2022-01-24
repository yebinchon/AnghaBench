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
struct TYPE_4__ {struct i915_fence_reg** regs; } ;
struct intel_vgpu {TYPE_1__ fence; struct intel_gvt* gvt; } ;
struct intel_runtime_pm {int dummy; } ;
struct intel_gvt {struct drm_i915_private* dev_priv; } ;
struct i915_fence_reg {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {TYPE_2__ vm; } ;
struct drm_i915_private {TYPE_3__ ggtt; struct intel_runtime_pm runtime_pm; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct i915_fence_reg*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct i915_fence_reg* FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_fence_reg*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_runtime_pm*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct intel_vgpu*) ; 

__attribute__((used)) static int FUNC10(struct intel_vgpu *vgpu)
{
	struct intel_gvt *gvt = vgpu->gvt;
	struct drm_i915_private *dev_priv = gvt->dev_priv;
	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
	struct i915_fence_reg *reg;
	int i;

	FUNC5(rpm);

	/* Request fences from host */
	FUNC7(&dev_priv->ggtt.vm.mutex);

	for (i = 0; i < FUNC9(vgpu); i++) {
		reg = FUNC3(dev_priv);
		if (FUNC0(reg))
			goto out_free_fence;

		vgpu->fence.regs[i] = reg;
	}

	FUNC1(vgpu);

	FUNC8(&dev_priv->ggtt.vm.mutex);
	FUNC6(rpm);
	return 0;
out_free_fence:
	FUNC2("Failed to alloc fences\n");
	/* Return fences to host, if fail */
	for (i = 0; i < FUNC9(vgpu); i++) {
		reg = vgpu->fence.regs[i];
		if (!reg)
			continue;
		FUNC4(reg);
		vgpu->fence.regs[i] = NULL;
	}
	FUNC8(&dev_priv->ggtt.vm.mutex);
	FUNC6(rpm);
	return -ENOSPC;
}