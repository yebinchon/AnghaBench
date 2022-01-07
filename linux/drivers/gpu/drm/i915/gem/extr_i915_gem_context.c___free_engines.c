
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_engines {int * engines; } ;


 int intel_context_put (int ) ;
 int kfree (struct i915_gem_engines*) ;

__attribute__((used)) static void __free_engines(struct i915_gem_engines *e, unsigned int count)
{
 while (count--) {
  if (!e->engines[count])
   continue;

  intel_context_put(e->engines[count]);
 }
 kfree(e);
}
