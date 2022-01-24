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
struct intel_shared_dpll {int /*<<< orphan*/  wakeref; TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ DPLL_ID_EHL_DPLL4 ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_DOMAIN_DPLL_DC_OFF ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv,
			     struct intel_shared_dpll *pll)
{
	i915_reg_t enable_reg = FUNC0(pll->info->id);

	if (FUNC1(dev_priv) &&
	    pll->info->id == DPLL_ID_EHL_DPLL4) {
		enable_reg = FUNC2(0);

		/*
		 * We need to disable DC states when this DPLL is enabled.
		 * This can be done by taking a reference on DPLL4 power
		 * domain.
		 */
		pll->wakeref = FUNC6(dev_priv,
						       POWER_DOMAIN_DPLL_DC_OFF);
	}

	FUNC5(dev_priv, pll, enable_reg);

	FUNC3(dev_priv, pll);

	/*
	 * DVFS pre sequence would be here, but in our driver the cdclk code
	 * paths should already be setting the appropriate voltage, hence we do
	 * nothing here.
	 */

	FUNC4(dev_priv, pll, enable_reg);

	/* DVFS post sequence would be here. See the comment above. */
}