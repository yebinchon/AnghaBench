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
struct intel_dpll_mgr {struct dpll_info* dpll_info; } ;
struct drm_i915_private {int num_shared_dpll; int /*<<< orphan*/  dpll_lock; struct intel_dpll_mgr const* dpll_mgr; TYPE_1__* shared_dplls; } ;
struct drm_device {int dummy; } ;
struct dpll_info {int id; scalar_t__ name; } ;
struct TYPE_2__ {struct dpll_info const* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int I915_NUM_PLLS ; 
 int FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct intel_dpll_mgr bxt_pll_mgr ; 
 struct intel_dpll_mgr cnl_pll_mgr ; 
 struct intel_dpll_mgr ehl_pll_mgr ; 
 struct intel_dpll_mgr hsw_pll_mgr ; 
 struct intel_dpll_mgr icl_pll_mgr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct intel_dpll_mgr pch_pll_mgr ; 
 struct intel_dpll_mgr skl_pll_mgr ; 
 struct intel_dpll_mgr tgl_pll_mgr ; 
 struct drm_i915_private* FUNC11 (struct drm_device*) ; 

void FUNC12(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = FUNC11(dev);
	const struct intel_dpll_mgr *dpll_mgr = NULL;
	const struct dpll_info *dpll_info;
	int i;

	if (FUNC4(dev_priv) >= 12)
		dpll_mgr = &tgl_pll_mgr;
	else if (FUNC6(dev_priv))
		dpll_mgr = &ehl_pll_mgr;
	else if (FUNC4(dev_priv) >= 11)
		dpll_mgr = &icl_pll_mgr;
	else if (FUNC5(dev_priv))
		dpll_mgr = &cnl_pll_mgr;
	else if (FUNC7(dev_priv))
		dpll_mgr = &skl_pll_mgr;
	else if (FUNC8(dev_priv))
		dpll_mgr = &bxt_pll_mgr;
	else if (FUNC1(dev_priv))
		dpll_mgr = &hsw_pll_mgr;
	else if (FUNC3(dev_priv) || FUNC2(dev_priv))
		dpll_mgr = &pch_pll_mgr;

	if (!dpll_mgr) {
		dev_priv->num_shared_dpll = 0;
		return;
	}

	dpll_info = dpll_mgr->dpll_info;

	for (i = 0; dpll_info[i].name; i++) {
		FUNC9(i != dpll_info[i].id);
		dev_priv->shared_dplls[i].info = &dpll_info[i];
	}

	dev_priv->dpll_mgr = dpll_mgr;
	dev_priv->num_shared_dpll = i;
	FUNC10(&dev_priv->dpll_lock);

	FUNC0(dev_priv->num_shared_dpll > I915_NUM_PLLS);
}