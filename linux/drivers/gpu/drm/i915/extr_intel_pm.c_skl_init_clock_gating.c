
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int FBC_LLC_FULLY_OPEN ;
 int FBC_LLC_READ_CTRL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int ILK_DPFC_CHICKEN ;
 int ILK_DPFC_NUKE_ON_ANY_MODIFICATION ;
 int gen9_init_clock_gating (struct drm_i915_private*) ;

__attribute__((used)) static void skl_init_clock_gating(struct drm_i915_private *dev_priv)
{
 gen9_init_clock_gating(dev_priv);


 I915_WRITE(FBC_LLC_READ_CTRL, I915_READ(FBC_LLC_READ_CTRL) |
     FBC_LLC_FULLY_OPEN);


 I915_WRITE(ILK_DPFC_CHICKEN, I915_READ(ILK_DPFC_CHICKEN) |
     ILK_DPFC_NUKE_ON_ANY_MODIFICATION);
}
