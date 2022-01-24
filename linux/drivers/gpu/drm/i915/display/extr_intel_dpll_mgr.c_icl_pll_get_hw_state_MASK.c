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
struct intel_dpll_hw_state {void* cfgcr1; void* cfgcr0; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int const DPLL_ID_EHL_DPLL4 ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int PLL_ENABLE ; 
 int /*<<< orphan*/  POWER_DOMAIN_DISPLAY_CORE ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (int const) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct drm_i915_private *dev_priv,
				 struct intel_shared_dpll *pll,
				 struct intel_dpll_hw_state *hw_state,
				 i915_reg_t enable_reg)
{
	const enum intel_dpll_id id = pll->info->id;
	intel_wakeref_t wakeref;
	bool ret = false;
	u32 val;

	wakeref = FUNC7(dev_priv,
						     POWER_DOMAIN_DISPLAY_CORE);
	if (!wakeref)
		return false;

	val = FUNC0(enable_reg);
	if (!(val & PLL_ENABLE))
		goto out;

	if (FUNC3(dev_priv) >= 12) {
		hw_state->cfgcr0 = FUNC0(FUNC5(id));
		hw_state->cfgcr1 = FUNC0(FUNC6(id));
	} else {
		if (FUNC4(dev_priv) && id == DPLL_ID_EHL_DPLL4) {
			hw_state->cfgcr0 = FUNC0(FUNC1(4));
			hw_state->cfgcr1 = FUNC0(FUNC2(4));
		} else {
			hw_state->cfgcr0 = FUNC0(FUNC1(id));
			hw_state->cfgcr1 = FUNC0(FUNC2(id));
		}
	}

	ret = true;
out:
	FUNC8(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);
	return ret;
}