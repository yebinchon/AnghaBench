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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FDI_RX_PLL_ENABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct drm_i915_private *dev_priv,
		       enum pipe pipe, bool state)
{
	u32 val;
	bool cur_state;

	val = FUNC1(FUNC0(pipe));
	cur_state = !!(val & FDI_RX_PLL_ENABLE);
	FUNC2(cur_state != state,
	     "FDI RX PLL assertion failure (expected %s, current %s)\n",
			FUNC3(state), FUNC3(cur_state));
}