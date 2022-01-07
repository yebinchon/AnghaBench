
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int init_contexts (struct drm_i915_private*) ;

void mock_init_contexts(struct drm_i915_private *i915)
{
 init_contexts(i915);
}
