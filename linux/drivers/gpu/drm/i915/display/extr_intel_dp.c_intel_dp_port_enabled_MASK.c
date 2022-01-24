#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int DP_PIPE_SEL_MASK ; 
 int DP_PIPE_SEL_MASK_CHV ; 
 int DP_PIPE_SEL_MASK_IVB ; 
 int DP_PIPE_SEL_SHIFT ; 
 int DP_PIPE_SEL_SHIFT_CHV ; 
 int DP_PIPE_SEL_SHIFT_IVB ; 
 int DP_PORT_EN ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int PORT_A ; 
 int FUNC4 (struct drm_i915_private*,int,int*) ; 

bool FUNC5(struct drm_i915_private *dev_priv,
			   i915_reg_t dp_reg, enum port port,
			   enum pipe *pipe)
{
	bool ret;
	u32 val;

	val = FUNC1(dp_reg);

	ret = val & DP_PORT_EN;

	/* asserts want to know the pipe even if the port is disabled */
	if (FUNC3(dev_priv) && port == PORT_A)
		*pipe = (val & DP_PIPE_SEL_MASK_IVB) >> DP_PIPE_SEL_SHIFT_IVB;
	else if (FUNC0(dev_priv) && port != PORT_A)
		ret &= FUNC4(dev_priv, port, pipe);
	else if (FUNC2(dev_priv))
		*pipe = (val & DP_PIPE_SEL_MASK_CHV) >> DP_PIPE_SEL_SHIFT_CHV;
	else
		*pipe = (val & DP_PIPE_SEL_MASK) >> DP_PIPE_SEL_SHIFT;

	return ret;
}