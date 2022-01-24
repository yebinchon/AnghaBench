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
 int DSL_LINEMASK_GEN2 ; 
 int DSL_LINEMASK_GEN3 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static bool FUNC4(struct drm_i915_private *dev_priv,
				    enum pipe pipe)
{
	i915_reg_t reg = FUNC2(pipe);
	u32 line1, line2;
	u32 line_mask;

	if (FUNC1(dev_priv, 2))
		line_mask = DSL_LINEMASK_GEN2;
	else
		line_mask = DSL_LINEMASK_GEN3;

	line1 = FUNC0(reg) & line_mask;
	FUNC3(5);
	line2 = FUNC0(reg) & line_mask;

	return line1 != line2;
}