
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_info_node {TYPE_1__* minor; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
{
 return to_i915(node->minor->dev);
}
