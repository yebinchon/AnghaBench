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
struct drm_i915_private {int pch_ssc_use; } ;
typedef  enum intel_dpll_id { ____Placeholder_intel_dpll_id } intel_dpll_id ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPLL_CTL ; 
 int SPLL_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv,
				 struct intel_shared_dpll *pll)
{
	enum intel_dpll_id id = pll->info->id;
	u32 val;

	val = FUNC1(SPLL_CTL);
	FUNC2(SPLL_CTL, val & ~SPLL_PLL_ENABLE);
	FUNC3(SPLL_CTL);

	/*
	 * Try to set up the PCH reference clock once all DPLLs
	 * that depend on it have been shut down.
	 */
	if (dev_priv->pch_ssc_use & FUNC0(id))
		FUNC4(dev_priv);
}