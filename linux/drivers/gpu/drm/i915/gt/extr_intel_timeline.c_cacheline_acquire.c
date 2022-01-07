
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline_cacheline {int active; } ;


 int i915_active_acquire (int *) ;

__attribute__((used)) static void cacheline_acquire(struct intel_timeline_cacheline *cl)
{
 if (cl)
  i915_active_acquire(&cl->active);
}
