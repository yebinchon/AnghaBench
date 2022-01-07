
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct device {int dummy; } ;


 int HSW_AUD_CHICKENBIT ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int IS_GEN (struct drm_i915_private*,int) ;
 int SKL_AUD_CODEC_WAKE_SIGNAL ;
 unsigned long i915_audio_component_get_power (struct device*) ;
 int i915_audio_component_put_power (struct device*,unsigned long) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void i915_audio_component_codec_wake_override(struct device *kdev,
           bool enable)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 unsigned long cookie;
 u32 tmp;

 if (!IS_GEN(dev_priv, 9))
  return;

 cookie = i915_audio_component_get_power(kdev);





 tmp = I915_READ(HSW_AUD_CHICKENBIT);
 tmp &= ~SKL_AUD_CODEC_WAKE_SIGNAL;
 I915_WRITE(HSW_AUD_CHICKENBIT, tmp);
 usleep_range(1000, 1500);

 if (enable) {
  tmp = I915_READ(HSW_AUD_CHICKENBIT);
  tmp |= SKL_AUD_CODEC_WAKE_SIGNAL;
  I915_WRITE(HSW_AUD_CHICKENBIT, tmp);
  usleep_range(1000, 1500);
 }

 i915_audio_component_put_power(kdev, cookie);
}
