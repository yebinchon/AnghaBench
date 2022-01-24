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
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_ENABLE ; 
 int /*<<< orphan*/  PLL_LOCK ; 
 int /*<<< orphan*/  PLL_POWER_ENABLE ; 
 int /*<<< orphan*/  PLL_POWER_STATE ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				struct intel_shared_dpll *pll)
{
	const enum intel_dpll_id id = pll->info->id;
	u32 val;

	/*
	 * 1. Configure DPCLKA_CFGCR0 to turn off the clock for the DDI.
	 * Done at intel_ddi_post_disable
	 */

	/*
	 * 2. If the frequency will result in a change to the voltage
	 * requirement, follow the Display Voltage Frequency Switching
	 * Sequence Before Frequency Change
	 *
	 * Note: DVFS is actually handled via the cdclk code paths,
	 * hence we do nothing here.
	 */

	/* 3. Disable DPLL through DPLL_ENABLE. */
	val = FUNC2(FUNC0(id));
	val &= ~PLL_ENABLE;
	FUNC3(FUNC0(id), val);

	/* 4. Wait for PLL not locked status in DPLL_ENABLE. */
	if (FUNC4(dev_priv, FUNC0(id), PLL_LOCK, 5))
		FUNC1("PLL %d locked\n", id);

	/*
	 * 5. If the frequency will result in a change to the voltage
	 * requirement, follow the Display Voltage Frequency Switching
	 * Sequence After Frequency Change
	 *
	 * Note: DVFS is actually handled via the cdclk code paths,
	 * hence we do nothing here.
	 */

	/* 6. Disable DPLL power in DPLL_ENABLE. */
	val = FUNC2(FUNC0(id));
	val &= ~PLL_POWER_ENABLE;
	FUNC3(FUNC0(id), val);

	/* 7. Wait for DPLL power state disabled in DPLL_ENABLE. */
	if (FUNC4(dev_priv, FUNC0(id),
				    PLL_POWER_STATE, 5))
		FUNC1("PLL %d Power not disabled\n", id);
}