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
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int I915_MAX_PIPES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PIPECONF_ENABLE ; 
 int PIPE_A ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct intel_vgpu*) ; 
 int FUNC3 (struct intel_vgpu*) ; 
 int FUNC4 (struct intel_vgpu*,int /*<<< orphan*/ ) ; 

int FUNC5(struct intel_vgpu *vgpu, int pipe)
{
	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;

	if (FUNC1(pipe < PIPE_A || pipe >= I915_MAX_PIPES))
		return -EINVAL;

	if (FUNC4(vgpu, FUNC0(pipe)) & PIPECONF_ENABLE)
		return 1;

	if (FUNC2(vgpu) &&
			FUNC3(vgpu) == pipe)
		return 1;
	return 0;
}