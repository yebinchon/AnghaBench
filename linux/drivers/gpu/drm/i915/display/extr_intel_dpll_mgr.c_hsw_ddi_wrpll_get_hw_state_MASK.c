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
struct intel_dpll_hw_state {int wrpll; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POWER_DOMAIN_DISPLAY_CORE ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int WRPLL_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct drm_i915_private *dev_priv,
				       struct intel_shared_dpll *pll,
				       struct intel_dpll_hw_state *hw_state)
{
	const enum intel_dpll_id id = pll->info->id;
	intel_wakeref_t wakeref;
	u32 val;

	wakeref = FUNC2(dev_priv,
						     POWER_DOMAIN_DISPLAY_CORE);
	if (!wakeref)
		return false;

	val = FUNC0(FUNC1(id));
	hw_state->wrpll = val;

	FUNC3(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref);

	return val & WRPLL_PLL_ENABLE;
}