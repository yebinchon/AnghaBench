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
typedef  int u32 ;
struct intel_shared_dpll {TYPE_1__* info; } ;
struct intel_dpll_hw_state {int cfgcr0; void* cfgcr1; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int DPLL_CFGCR0_HDMI_MODE ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int PLL_ENABLE ; 
 int /*<<< orphan*/  POWER_DOMAIN_DISPLAY_CORE ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct drm_i915_private *dev_priv,
				     struct intel_shared_dpll *pll,
				     struct intel_dpll_hw_state *hw_state)
{
	const enum intel_dpll_id id = pll->info->id;
	intel_wakeref_t wakeref;
	u32 val;
	bool ret;

	wakeref = FUNC4(dev_priv,
						     POWER_DOMAIN_DISPLAY_CORE);
	if (!wakeref)
		return false;

	ret = false;

	val = FUNC3(FUNC2(id));
	if (!(val & PLL_ENABLE))
		goto out;

	val = FUNC3(FUNC0(id));
	hw_state->cfgcr0 = val;

	/* avoid reading back stale values if HDMI mode is not enabled */
	if (val & DPLL_CFGCR0_HDMI_MODE) {
		hw_state->cfgcr1 = FUNC3(FUNC1(id));
	}
	ret = true;

out:
	FUNC5(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);

	return ret;
}