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
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct intel_vgpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct intel_vgpu *vgpu)
{
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

	FUNC1(&dev_priv->runtime_pm);
	FUNC0(vgpu);
	FUNC2(&dev_priv->runtime_pm);
}