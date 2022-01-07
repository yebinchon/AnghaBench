
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DPFC_CTL_EN ;
 int I915_READ (int ) ;
 int ILK_DPFC_CONTROL ;

__attribute__((used)) static bool ilk_fbc_is_active(struct drm_i915_private *dev_priv)
{
 return I915_READ(ILK_DPFC_CONTROL) & DPFC_CTL_EN;
}
