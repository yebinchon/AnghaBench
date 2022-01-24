#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct skl_dpll_regs {int /*<<< orphan*/  ctl; int /*<<< orphan*/  cfgcr2; int /*<<< orphan*/  cfgcr1; } ;
struct TYPE_5__ {int cfgcr1; int cfgcr2; } ;
struct TYPE_6__ {TYPE_2__ hw_state; } ;
struct intel_shared_dpll {TYPE_3__ state; TYPE_1__* info; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_4__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const) ; 
 int /*<<< orphan*/  DPLL_STATUS ; 
 int /*<<< orphan*/  FUNC1 (char*,int const) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int LCPLL_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,struct intel_shared_dpll*) ; 
 struct skl_dpll_regs* skl_dpll_regs ; 

__attribute__((used)) static void FUNC7(struct drm_i915_private *dev_priv,
			       struct intel_shared_dpll *pll)
{
	const struct skl_dpll_regs *regs = skl_dpll_regs;
	const enum intel_dpll_id id = pll->info->id;

	FUNC6(dev_priv, pll);

	FUNC3(regs[id].cfgcr1, pll->state.hw_state.cfgcr1);
	FUNC3(regs[id].cfgcr2, pll->state.hw_state.cfgcr2);
	FUNC4(regs[id].cfgcr1);
	FUNC4(regs[id].cfgcr2);

	/* the enable bit is always bit 31 */
	FUNC3(regs[id].ctl,
		   FUNC2(regs[id].ctl) | LCPLL_PLL_ENABLE);

	if (FUNC5(dev_priv, DPLL_STATUS, FUNC0(id), 5))
		FUNC1("DPLL %d not locked\n", id);
}