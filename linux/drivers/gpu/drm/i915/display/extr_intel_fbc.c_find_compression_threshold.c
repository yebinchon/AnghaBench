
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct drm_mm_node {int dummy; } ;
struct drm_i915_private {int dsm; } ;


 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ U64_MAX ;
 int i915_gem_stolen_insert_node_in_range (struct drm_i915_private*,struct drm_mm_node*,int,int,int ,scalar_t__) ;
 scalar_t__ resource_size (int *) ;

__attribute__((used)) static int find_compression_threshold(struct drm_i915_private *dev_priv,
          struct drm_mm_node *node,
          int size,
          int fb_cpp)
{
 int compression_threshold = 1;
 int ret;
 u64 end;





 if (IS_BROADWELL(dev_priv) || IS_GEN9_BC(dev_priv))
  end = resource_size(&dev_priv->dsm) - 8 * 1024 * 1024;
 else
  end = U64_MAX;
 ret = i915_gem_stolen_insert_node_in_range(dev_priv, node, size <<= 1,
         4096, 0, end);
 if (ret == 0)
  return compression_threshold;

again:

 if (compression_threshold > 4 ||
     (fb_cpp == 2 && compression_threshold == 2))
  return 0;

 ret = i915_gem_stolen_insert_node_in_range(dev_priv, node, size >>= 1,
         4096, 0, end);
 if (ret && INTEL_GEN(dev_priv) <= 4) {
  return 0;
 } else if (ret) {
  compression_threshold <<= 1;
  goto again;
 } else {
  return compression_threshold;
 }
}
