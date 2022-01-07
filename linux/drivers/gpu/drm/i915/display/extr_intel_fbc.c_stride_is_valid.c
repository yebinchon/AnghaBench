
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ WARN_ON_ONCE (int) ;

__attribute__((used)) static bool stride_is_valid(struct drm_i915_private *dev_priv,
       unsigned int stride)
{

 if (WARN_ON_ONCE((stride & (64 - 1)) != 0))
  return 0;


 if (stride < 512)
  return 0;

 if (IS_GEN(dev_priv, 2) || IS_GEN(dev_priv, 3))
  return stride == 4096 || stride == 8192;

 if (IS_GEN(dev_priv, 4) && !IS_G4X(dev_priv) && stride < 2048)
  return 0;

 if (stride > 16384)
  return 0;

 return 1;
}
