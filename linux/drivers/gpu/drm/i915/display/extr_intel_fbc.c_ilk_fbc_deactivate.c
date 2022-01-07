
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DPFC_CTL_EN ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ILK_DPFC_CONTROL ;

__attribute__((used)) static void ilk_fbc_deactivate(struct drm_i915_private *dev_priv)
{
 u32 dpfc_ctl;


 dpfc_ctl = I915_READ(ILK_DPFC_CONTROL);
 if (dpfc_ctl & DPFC_CTL_EN) {
  dpfc_ctl &= ~DPFC_CTL_EN;
  I915_WRITE(ILK_DPFC_CONTROL, dpfc_ctl);
 }
}
