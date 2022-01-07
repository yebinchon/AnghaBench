
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int private; } ;
struct TYPE_5__ {int mg_pll_tdc_coldst_bias; int mg_pll_bias; int mg_pll_ssc; int mg_pll_frac_lock; int mg_pll_lf; int mg_pll_div1; int mg_pll_div0; int mg_clktop2_hsclkctl; int mg_clktop2_coreclkctl1; int mg_refclkin_ctl; int cfgcr1; int cfgcr0; int wrpll; int fp1; int fp0; int dpll_md; int dpll; } ;
struct TYPE_6__ {TYPE_2__ hw_state; int crtc_mask; } ;
struct intel_shared_dpll {TYPE_3__ state; int on; int active_mask; TYPE_1__* info; } ;
struct drm_device {int dummy; } ;
struct drm_i915_private {int num_shared_dpll; struct intel_shared_dpll* shared_dplls; struct drm_device drm; } ;
struct TYPE_4__ {int id; int name; } ;


 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,...) ;
 int yesno (int ) ;

__attribute__((used)) static int i915_shared_dplls_info(struct seq_file *m, void *unused)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 struct drm_device *dev = &dev_priv->drm;
 int i;

 drm_modeset_lock_all(dev);
 for (i = 0; i < dev_priv->num_shared_dpll; i++) {
  struct intel_shared_dpll *pll = &dev_priv->shared_dplls[i];

  seq_printf(m, "DPLL%i: %s, id: %i\n", i, pll->info->name,
      pll->info->id);
  seq_printf(m, " crtc_mask: 0x%08x, active: 0x%x, on: %s\n",
      pll->state.crtc_mask, pll->active_mask, yesno(pll->on));
  seq_printf(m, " tracked hardware state:\n");
  seq_printf(m, " dpll:    0x%08x\n", pll->state.hw_state.dpll);
  seq_printf(m, " dpll_md: 0x%08x\n",
      pll->state.hw_state.dpll_md);
  seq_printf(m, " fp0:     0x%08x\n", pll->state.hw_state.fp0);
  seq_printf(m, " fp1:     0x%08x\n", pll->state.hw_state.fp1);
  seq_printf(m, " wrpll:   0x%08x\n", pll->state.hw_state.wrpll);
  seq_printf(m, " cfgcr0:  0x%08x\n", pll->state.hw_state.cfgcr0);
  seq_printf(m, " cfgcr1:  0x%08x\n", pll->state.hw_state.cfgcr1);
  seq_printf(m, " mg_refclkin_ctl:        0x%08x\n",
      pll->state.hw_state.mg_refclkin_ctl);
  seq_printf(m, " mg_clktop2_coreclkctl1: 0x%08x\n",
      pll->state.hw_state.mg_clktop2_coreclkctl1);
  seq_printf(m, " mg_clktop2_hsclkctl:    0x%08x\n",
      pll->state.hw_state.mg_clktop2_hsclkctl);
  seq_printf(m, " mg_pll_div0:  0x%08x\n",
      pll->state.hw_state.mg_pll_div0);
  seq_printf(m, " mg_pll_div1:  0x%08x\n",
      pll->state.hw_state.mg_pll_div1);
  seq_printf(m, " mg_pll_lf:    0x%08x\n",
      pll->state.hw_state.mg_pll_lf);
  seq_printf(m, " mg_pll_frac_lock: 0x%08x\n",
      pll->state.hw_state.mg_pll_frac_lock);
  seq_printf(m, " mg_pll_ssc:   0x%08x\n",
      pll->state.hw_state.mg_pll_ssc);
  seq_printf(m, " mg_pll_bias:  0x%08x\n",
      pll->state.hw_state.mg_pll_bias);
  seq_printf(m, " mg_pll_tdc_coldst_bias: 0x%08x\n",
      pll->state.hw_state.mg_pll_tdc_coldst_bias);
 }
 drm_modeset_unlock_all(dev);

 return 0;
}
