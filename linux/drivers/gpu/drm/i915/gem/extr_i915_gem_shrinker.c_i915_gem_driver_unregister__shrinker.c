
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shrinker; int oom_notifier; int vmap_notifier; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int WARN_ON (int ) ;
 int unregister_oom_notifier (int *) ;
 int unregister_shrinker (int *) ;
 int unregister_vmap_purge_notifier (int *) ;

void i915_gem_driver_unregister__shrinker(struct drm_i915_private *i915)
{
 WARN_ON(unregister_vmap_purge_notifier(&i915->mm.vmap_notifier));
 WARN_ON(unregister_oom_notifier(&i915->mm.oom_notifier));
 unregister_shrinker(&i915->mm.shrinker);
}
