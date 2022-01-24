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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int LVDS_PIPE_SEL_MASK ; 
 int LVDS_PIPE_SEL_MASK_CPT ; 
 int LVDS_PIPE_SEL_SHIFT ; 
 int LVDS_PIPE_SEL_SHIFT_CPT ; 
 int LVDS_PORT_EN ; 

bool FUNC2(struct drm_i915_private *dev_priv,
			     i915_reg_t lvds_reg, enum pipe *pipe)
{
	u32 val;

	val = FUNC1(lvds_reg);

	/* asserts want to know the pipe even if the port is disabled */
	if (FUNC0(dev_priv))
		*pipe = (val & LVDS_PIPE_SEL_MASK_CPT) >> LVDS_PIPE_SEL_SHIFT_CPT;
	else
		*pipe = (val & LVDS_PIPE_SEL_MASK) >> LVDS_PIPE_SEL_SHIFT;

	return val & LVDS_PORT_EN;
}