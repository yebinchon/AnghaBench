
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct drm_mm_node {int dummy; } ;
struct drm_i915_private {int dummy; } ;


 int U64_MAX ;
 int i915_gem_stolen_insert_node_in_range (struct drm_i915_private*,struct drm_mm_node*,int ,unsigned int,int ,int ) ;

int i915_gem_stolen_insert_node(struct drm_i915_private *dev_priv,
    struct drm_mm_node *node, u64 size,
    unsigned alignment)
{
 return i915_gem_stolen_insert_node_in_range(dev_priv, node, size,
          alignment, 0, U64_MAX);
}
