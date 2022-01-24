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
typedef  int /*<<< orphan*/  u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_ENABLE ; 
 int /*<<< orphan*/  PLL_LOCK ; 
 int /*<<< orphan*/  PLL_POWER_ENABLE ; 
 int /*<<< orphan*/  PLL_POWER_STATE ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv,
			    struct intel_shared_dpll *pll,
			    i915_reg_t enable_reg)
{
	u32 val;

	/* The first steps are done by intel_ddi_post_disable(). */

	/*
	 * DVFS pre sequence would be here, but in our driver the cdclk code
	 * paths should already be setting the appropriate voltage, hence we do
	 * nothign here.
	 */

	val = FUNC1(enable_reg);
	val &= ~PLL_ENABLE;
	FUNC2(enable_reg, val);

	/* Timeout is actually 1us. */
	if (FUNC3(dev_priv, enable_reg, PLL_LOCK, 1))
		FUNC0("PLL %d locked\n", pll->info->id);

	/* DVFS post sequence would be here. See the comment above. */

	val = FUNC1(enable_reg);
	val &= ~PLL_POWER_ENABLE;
	FUNC2(enable_reg, val);

	/*
	 * The spec says we need to "wait" but it also says it should be
	 * immediate.
	 */
	if (FUNC3(dev_priv, enable_reg, PLL_POWER_STATE, 1))
		FUNC0("PLL %d Power not disabled\n", pll->info->id);
}