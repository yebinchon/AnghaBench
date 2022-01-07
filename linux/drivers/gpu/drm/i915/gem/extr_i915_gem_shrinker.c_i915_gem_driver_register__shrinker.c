
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int notifier_call; } ;
struct TYPE_8__ {int notifier_call; } ;
struct TYPE_7__ {int batch; int seeks; int count_objects; int scan_objects; } ;
struct TYPE_5__ {TYPE_2__ vmap_notifier; TYPE_4__ oom_notifier; TYPE_3__ shrinker; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int DEFAULT_SEEKS ;
 int WARN_ON (int ) ;
 int i915_gem_shrinker_count ;
 int i915_gem_shrinker_oom ;
 int i915_gem_shrinker_scan ;
 int i915_gem_shrinker_vmap ;
 int register_oom_notifier (TYPE_4__*) ;
 int register_shrinker (TYPE_3__*) ;
 int register_vmap_purge_notifier (TYPE_2__*) ;

void i915_gem_driver_register__shrinker(struct drm_i915_private *i915)
{
 i915->mm.shrinker.scan_objects = i915_gem_shrinker_scan;
 i915->mm.shrinker.count_objects = i915_gem_shrinker_count;
 i915->mm.shrinker.seeks = DEFAULT_SEEKS;
 i915->mm.shrinker.batch = 4096;
 WARN_ON(register_shrinker(&i915->mm.shrinker));

 i915->mm.oom_notifier.notifier_call = i915_gem_shrinker_oom;
 WARN_ON(register_oom_notifier(&i915->mm.oom_notifier));

 i915->mm.vmap_notifier.notifier_call = i915_gem_shrinker_vmap;
 WARN_ON(register_vmap_purge_notifier(&i915->mm.vmap_notifier));
}
