
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int GEM_BUG_ON (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int bdw_setup_private_ppat (struct drm_i915_private*) ;
 int chv_setup_private_ppat (struct drm_i915_private*) ;
 int cnl_setup_private_ppat (struct drm_i915_private*) ;
 int tgl_setup_private_ppat (struct drm_i915_private*) ;

__attribute__((used)) static void setup_private_pat(struct drm_i915_private *dev_priv)
{
 GEM_BUG_ON(INTEL_GEN(dev_priv) < 8);

 if (INTEL_GEN(dev_priv) >= 12)
  tgl_setup_private_ppat(dev_priv);
 else if (INTEL_GEN(dev_priv) >= 10)
  cnl_setup_private_ppat(dev_priv);
 else if (IS_CHERRYVIEW(dev_priv) || IS_GEN9_LP(dev_priv))
  chv_setup_private_ppat(dev_priv);
 else
  bdw_setup_private_ppat(dev_priv);
}
