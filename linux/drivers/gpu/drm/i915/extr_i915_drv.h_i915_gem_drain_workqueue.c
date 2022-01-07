
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int wq; } ;


 int drain_workqueue (int ) ;
 int flush_workqueue (int ) ;
 int i915_gem_drain_freed_objects (struct drm_i915_private*) ;
 int rcu_barrier () ;

__attribute__((used)) static inline void i915_gem_drain_workqueue(struct drm_i915_private *i915)
{
 int pass = 3;
 do {
  flush_workqueue(i915->wq);
  rcu_barrier();
  i915_gem_drain_freed_objects(i915);
 } while (--pass);
 drain_workqueue(i915->wq);
}
