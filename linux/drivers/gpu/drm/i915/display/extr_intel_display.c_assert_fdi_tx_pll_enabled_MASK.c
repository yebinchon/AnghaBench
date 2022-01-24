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
 int FDI_TX_PLL_ENABLE ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				      enum pipe pipe)
{
	u32 val;

	/* ILK FDI PLL is always enabled */
	if (FUNC4(dev_priv, 5))
		return;

	/* On Haswell, DDI ports are responsible for the FDI PLL setup */
	if (FUNC1(dev_priv))
		return;

	val = FUNC2(FUNC0(pipe));
	FUNC3(!(val & FDI_TX_PLL_ENABLE), "FDI TX PLL assertion failure, should be active but is disabled\n");
}