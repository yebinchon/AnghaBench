
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void shrinker_unlock(struct drm_i915_private *i915, bool unlock)
{
 if (!unlock)
  return;

 mutex_unlock(&i915->drm.struct_mutex);
}
