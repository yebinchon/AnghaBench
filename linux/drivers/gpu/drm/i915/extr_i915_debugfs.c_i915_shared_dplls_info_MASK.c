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
struct seq_file {int /*<<< orphan*/  private; } ;
struct TYPE_5__ {int /*<<< orphan*/  mg_pll_tdc_coldst_bias; int /*<<< orphan*/  mg_pll_bias; int /*<<< orphan*/  mg_pll_ssc; int /*<<< orphan*/  mg_pll_frac_lock; int /*<<< orphan*/  mg_pll_lf; int /*<<< orphan*/  mg_pll_div1; int /*<<< orphan*/  mg_pll_div0; int /*<<< orphan*/  mg_clktop2_hsclkctl; int /*<<< orphan*/  mg_clktop2_coreclkctl1; int /*<<< orphan*/  mg_refclkin_ctl; int /*<<< orphan*/  cfgcr1; int /*<<< orphan*/  cfgcr0; int /*<<< orphan*/  wrpll; int /*<<< orphan*/  fp1; int /*<<< orphan*/  fp0; int /*<<< orphan*/  dpll_md; int /*<<< orphan*/  dpll; } ;
struct TYPE_6__ {TYPE_2__ hw_state; int /*<<< orphan*/  crtc_mask; } ;
struct intel_shared_dpll {TYPE_3__ state; int /*<<< orphan*/  on; int /*<<< orphan*/  active_mask; TYPE_1__* info; } ;
struct drm_device {int dummy; } ;
struct drm_i915_private {int num_shared_dpll; struct intel_shared_dpll* shared_dplls; struct drm_device drm; } ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 struct drm_i915_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC2(m->private);
	struct drm_device *dev = &dev_priv->drm;
	int i;

	FUNC0(dev);
	for (i = 0; i < dev_priv->num_shared_dpll; i++) {
		struct intel_shared_dpll *pll = &dev_priv->shared_dplls[i];

		FUNC3(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
			   pll->info->id);
		FUNC3(m, " crtc_mask: 0x%08x, active: 0x%x, on: %s\n",
			   pll->state.crtc_mask, pll->active_mask, FUNC4(pll->on));
		FUNC3(m, " tracked hardware state:\n");
		FUNC3(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
		FUNC3(m, " dpll_md: 0x%08x\n",
			   pll->state.hw_state.dpll_md);
		FUNC3(m, " fp0:     0x%08x\n", pll->state.hw_state.fp0);
		FUNC3(m, " fp1:     0x%08x\n", pll->state.hw_state.fp1);
		FUNC3(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
		FUNC3(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
		FUNC3(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
		FUNC3(m, " mg_refclkin_ctl:        0x%08x\n",
			   pll->state.hw_state.mg_refclkin_ctl);
		FUNC3(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
			   pll->state.hw_state.mg_clktop2_coreclkctl1);
		FUNC3(m, " mg_clktop2_hsclkctl:    0x%08x\n",
			   pll->state.hw_state.mg_clktop2_hsclkctl);
		FUNC3(m, " mg_pll_div0:  0x%08x\n",
			   pll->state.hw_state.mg_pll_div0);
		FUNC3(m, " mg_pll_div1:  0x%08x\n",
			   pll->state.hw_state.mg_pll_div1);
		FUNC3(m, " mg_pll_lf:    0x%08x\n",
			   pll->state.hw_state.mg_pll_lf);
		FUNC3(m, " mg_pll_frac_lock: 0x%08x\n",
			   pll->state.hw_state.mg_pll_frac_lock);
		FUNC3(m, " mg_pll_ssc:   0x%08x\n",
			   pll->state.hw_state.mg_pll_ssc);
		FUNC3(m, " mg_pll_bias:  0x%08x\n",
			   pll->state.hw_state.mg_pll_bias);
		FUNC3(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
			   pll->state.hw_state.mg_pll_tdc_coldst_bias);
	}
	FUNC1(dev);

	return 0;
}