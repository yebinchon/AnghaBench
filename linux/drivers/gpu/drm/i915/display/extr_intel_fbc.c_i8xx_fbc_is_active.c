
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int FBC_CONTROL ;
 int FBC_CTL_EN ;
 int I915_READ (int ) ;

__attribute__((used)) static bool i8xx_fbc_is_active(struct drm_i915_private *dev_priv)
{
 return I915_READ(FBC_CONTROL) & FBC_CTL_EN;
}
