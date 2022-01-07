
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int false_color; } ;
struct drm_i915_private {TYPE_1__ fbc; } ;


 int ENODEV ;
 int HAS_FBC (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;

__attribute__((used)) static int i915_fbc_false_color_get(void *data, u64 *val)
{
 struct drm_i915_private *dev_priv = data;

 if (INTEL_GEN(dev_priv) < 7 || !HAS_FBC(dev_priv))
  return -ENODEV;

 *val = dev_priv->fbc.false_color;

 return 0;
}
