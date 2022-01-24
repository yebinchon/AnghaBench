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
struct intel_shared_dpll {int dummy; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TBT_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
			   struct intel_shared_dpll *pll)
{
	FUNC2(dev_priv, pll, TBT_PLL_ENABLE);

	FUNC0(dev_priv, pll);

	/*
	 * DVFS pre sequence would be here, but in our driver the cdclk code
	 * paths should already be setting the appropriate voltage, hence we do
	 * nothing here.
	 */

	FUNC1(dev_priv, pll, TBT_PLL_ENABLE);

	/* DVFS post sequence would be here. See the comment above. */
}