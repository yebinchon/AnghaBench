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
struct intel_shared_dpll {TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,struct intel_shared_dpll*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
			  struct intel_shared_dpll *pll)
{
	i915_reg_t enable_reg =
		FUNC0(FUNC3(pll->info->id));

	FUNC4(dev_priv, pll, enable_reg);

	FUNC1(dev_priv, pll);

	/*
	 * DVFS pre sequence would be here, but in our driver the cdclk code
	 * paths should already be setting the appropriate voltage, hence we do
	 * nothing here.
	 */

	FUNC2(dev_priv, pll, enable_reg);

	/* DVFS post sequence would be here. See the comment above. */
}