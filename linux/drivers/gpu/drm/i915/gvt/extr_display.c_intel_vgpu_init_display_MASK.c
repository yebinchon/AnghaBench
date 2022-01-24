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
struct intel_vgpu {TYPE_1__* gvt; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GVT_DP_B ; 
 int /*<<< orphan*/  GVT_DP_D ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PORT_B ; 
 int /*<<< orphan*/  PORT_D ; 
 int /*<<< orphan*/  FUNC3 (struct intel_vgpu*) ; 
 int FUNC4 (struct intel_vgpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct intel_vgpu *vgpu, u64 resolution)
{
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

	FUNC3(vgpu);

	if (FUNC2(dev_priv) || FUNC1(dev_priv) ||
	    FUNC0(dev_priv))
		return FUNC4(vgpu, PORT_D, GVT_DP_D,
						resolution);
	else
		return FUNC4(vgpu, PORT_B, GVT_DP_B,
						resolution);
}