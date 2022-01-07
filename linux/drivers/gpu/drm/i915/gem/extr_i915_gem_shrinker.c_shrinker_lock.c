
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mutex {int dummy; } ;
struct TYPE_2__ {struct mutex struct_mutex; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int BUG () ;
 int I915_MM_SHRINKER ;
 unsigned int I915_SHRINK_ACTIVE ;



 int mutex_lock_killable_nested (struct mutex*,int ) ;
 int mutex_trylock_recursive (struct mutex*) ;

__attribute__((used)) static bool shrinker_lock(struct drm_i915_private *i915,
     unsigned int flags,
     bool *unlock)
{
 struct mutex *m = &i915->drm.struct_mutex;

 switch (mutex_trylock_recursive(m)) {
 case 129:
  *unlock = 0;
  return 1;

 case 130:
  *unlock = 0;
  if (flags & I915_SHRINK_ACTIVE &&
      mutex_lock_killable_nested(m, I915_MM_SHRINKER) == 0)
   *unlock = 1;
  return *unlock;

 case 128:
  *unlock = 1;
  return 1;
 }

 BUG();
}
