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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DP_PIPE_SEL_MASK ; 
 int DP_PORT_EN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				     enum port port, i915_reg_t dp_reg)
{
	u32 val = FUNC2(dp_reg);

	if (val & DP_PORT_EN ||
	    (val & DP_PIPE_SEL_MASK) == FUNC0(PIPE_A))
		return;

	FUNC1("Sanitizing transcoder select for DP %c\n",
		      FUNC4(port));

	val &= ~DP_PIPE_SEL_MASK;
	val |= FUNC0(PIPE_A);

	FUNC3(dp_reg, val);
}