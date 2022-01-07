
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int ASLC_PWM_FREQ_FAILED ;
 int DRM_DEBUG_DRIVER (char*) ;

__attribute__((used)) static u32 asle_set_pwm_freq(struct drm_i915_private *dev_priv, u32 pfmb)
{
 DRM_DEBUG_DRIVER("PWM freq is not supported\n");
 return ASLC_PWM_FREQ_FAILED;
}
