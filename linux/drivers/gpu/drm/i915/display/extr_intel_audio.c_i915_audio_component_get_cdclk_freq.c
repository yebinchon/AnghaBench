
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cdclk; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int HAS_DDI (struct drm_i915_private*) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;

__attribute__((used)) static int i915_audio_component_get_cdclk_freq(struct device *kdev)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(kdev);

 if (WARN_ON_ONCE(!HAS_DDI(dev_priv)))
  return -ENODEV;

 return dev_priv->cdclk.hw.cdclk;
}
