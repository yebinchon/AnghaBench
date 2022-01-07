
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline_cacheline {int active; } ;


 int i915_active_release (int *) ;

__attribute__((used)) static void cacheline_release(struct intel_timeline_cacheline *cl)
{
 if (cl)
  i915_active_release(&cl->active);
}
