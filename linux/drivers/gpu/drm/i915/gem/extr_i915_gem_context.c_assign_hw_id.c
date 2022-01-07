
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;


 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 int __GFP_RETRY_MAYFAIL ;
 int lockdep_assert_held (int *) ;
 int new_hw_id (struct drm_i915_private*,int) ;
 int steal_hw_id (struct drm_i915_private*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int assign_hw_id(struct drm_i915_private *i915, unsigned int *out)
{
 int ret;

 lockdep_assert_held(&i915->contexts.mutex);







 ret = new_hw_id(i915, GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN);
 if (unlikely(ret < 0)) {
  ret = steal_hw_id(i915);
  if (ret < 0)
   ret = new_hw_id(i915, GFP_KERNEL);
  if (ret < 0)
   return ret;
 }

 *out = ret;
 return 0;
}
