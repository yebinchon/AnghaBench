
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int private; } ;
struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;


 int DSPFW3 ;
 int FW_BLC_SELF ;
 int FW_BLC_SELF_EN ;
 int FW_BLC_SELF_VLV ;
 int FW_CSPWRDWNEN ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int INSTPM ;
 int INSTPM_SELF_EN ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_I915GM (struct drm_i915_private*) ;
 scalar_t__ IS_I945G (struct drm_i915_private*) ;
 scalar_t__ IS_I945GM (struct drm_i915_private*) ;
 scalar_t__ IS_I965GM (struct drm_i915_private*) ;
 scalar_t__ IS_PINEVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PINEVIEW_SELF_REFRESH_EN ;
 int POWER_DOMAIN_INIT ;
 int WM1_LP_ILK ;
 int WM1_LP_SR_EN ;
 int enableddisabled (int) ;
 int intel_display_power_get (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;
 struct drm_i915_private* node_to_i915 (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int i915_sr_status(struct seq_file *m, void *unused)
{
 struct drm_i915_private *dev_priv = node_to_i915(m->private);
 intel_wakeref_t wakeref;
 bool sr_enabled = 0;

 wakeref = intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);

 if (INTEL_GEN(dev_priv) >= 9)
                                                 ;
 else if (HAS_PCH_SPLIT(dev_priv))
  sr_enabled = I915_READ(WM1_LP_ILK) & WM1_LP_SR_EN;
 else if (IS_I965GM(dev_priv) || IS_G4X(dev_priv) ||
   IS_I945G(dev_priv) || IS_I945GM(dev_priv))
  sr_enabled = I915_READ(FW_BLC_SELF) & FW_BLC_SELF_EN;
 else if (IS_I915GM(dev_priv))
  sr_enabled = I915_READ(INSTPM) & INSTPM_SELF_EN;
 else if (IS_PINEVIEW(dev_priv))
  sr_enabled = I915_READ(DSPFW3) & PINEVIEW_SELF_REFRESH_EN;
 else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  sr_enabled = I915_READ(FW_BLC_SELF_VLV) & FW_CSPWRDWNEN;

 intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);

 seq_printf(m, "self-refresh: %s\n", enableddisabled(sr_enabled));

 return 0;
}
