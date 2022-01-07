
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 unsigned int UINT_MAX ;
 int icl_max_bw (struct drm_i915_private*,int,int) ;
 unsigned int min3 (int ,int ,int ) ;

__attribute__((used)) static unsigned int intel_max_data_rate(struct drm_i915_private *dev_priv,
     int num_planes)
{
 if (IS_GEN(dev_priv, 11))





  return min3(icl_max_bw(dev_priv, num_planes, 0),
       icl_max_bw(dev_priv, num_planes, 1),
       icl_max_bw(dev_priv, num_planes, 2));
 else
  return UINT_MAX;
}
