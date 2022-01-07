
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 scalar_t__ HAS_DDI (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int PANEL_UNLOCK_MASK ;
 int PANEL_UNLOCK_REGS ;
 int PP_CONTROL (int) ;

void intel_pps_unlock_regs_wa(struct drm_i915_private *dev_priv)
{
 int pps_num;
 int pps_idx;

 if (HAS_DDI(dev_priv))
  return;




 if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
  pps_num = 2;
 else
  pps_num = 1;

 for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
  u32 val = I915_READ(PP_CONTROL(pps_idx));

  val = (val & ~PANEL_UNLOCK_MASK) | PANEL_UNLOCK_REGS;
  I915_WRITE(PP_CONTROL(pps_idx), val);
 }
}
