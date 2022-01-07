
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mutex {int dep_map; } ;
struct TYPE_4__ {int dep_map; } ;
struct TYPE_3__ {TYPE_2__ struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int CONFIG_LOCKDEP ;
 int GFP_KERNEL ;
 int I915_MM_NORMAL ;
 int I915_MM_SHRINKER ;
 int IS_ENABLED (int ) ;
 int _RET_IP_ ;
 int fs_reclaim_acquire (int ) ;
 int fs_reclaim_release (int ) ;
 int lockdep_is_held_type (TYPE_2__*,int) ;
 int mutex_acquire (int *,int ,int ,int ) ;
 int mutex_release (int *,int ,int ) ;

void i915_gem_shrinker_taints_mutex(struct drm_i915_private *i915,
        struct mutex *mutex)
{
 bool unlock = 0;

 if (!IS_ENABLED(CONFIG_LOCKDEP))
  return;

 if (!lockdep_is_held_type(&i915->drm.struct_mutex, -1)) {
  mutex_acquire(&i915->drm.struct_mutex.dep_map,
         I915_MM_NORMAL, 0, _RET_IP_);
  unlock = 1;
 }

 fs_reclaim_acquire(GFP_KERNEL);
 mutex_acquire(&i915->drm.struct_mutex.dep_map,
        I915_MM_SHRINKER, 0, _RET_IP_);

 mutex_acquire(&mutex->dep_map, 0, 0, _RET_IP_);
 mutex_release(&mutex->dep_map, 0, _RET_IP_);

 mutex_release(&i915->drm.struct_mutex.dep_map, 0, _RET_IP_);

 fs_reclaim_release(GFP_KERNEL);

 if (unlock)
  mutex_release(&i915->drm.struct_mutex.dep_map, 0, _RET_IP_);
}
