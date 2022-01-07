
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int BXT_REVID_B_LAST ;
 int DRM_ERROR (char*) ;
 int IS_BXT_REVID (struct drm_i915_private*,int ,int ) ;
 int IS_HSW_EARLY_SDV (struct drm_i915_private*) ;
 int IS_KBL_REVID (struct drm_i915_private*,int ,int ) ;
 int IS_SKL_REVID (struct drm_i915_private*,int ,int ) ;
 int KBL_REVID_A0 ;
 int LOCKDEP_STILL_OK ;
 int SKL_REVID_F0 ;
 int TAINT_MACHINE_CHECK ;
 int add_taint (int ,int ) ;

__attribute__((used)) static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
{
 bool pre = 0;

 pre |= IS_HSW_EARLY_SDV(dev_priv);
 pre |= IS_SKL_REVID(dev_priv, 0, SKL_REVID_F0);
 pre |= IS_BXT_REVID(dev_priv, 0, BXT_REVID_B_LAST);
 pre |= IS_KBL_REVID(dev_priv, 0, KBL_REVID_A0);

 if (pre) {
  DRM_ERROR("This is a pre-production stepping. "
     "It may not be fully functional.\n");
  add_taint(TAINT_MACHINE_CHECK, LOCKDEP_STILL_OK);
 }
}
