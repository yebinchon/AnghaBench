
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free_work; int free_count; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 scalar_t__ atomic_read (int *) ;
 int flush_work (int *) ;
 int rcu_barrier () ;

__attribute__((used)) static inline void i915_gem_drain_freed_objects(struct drm_i915_private *i915)
{







 while (atomic_read(&i915->mm.free_count)) {
  flush_work(&i915->mm.free_work);
  rcu_barrier();
 }
}
