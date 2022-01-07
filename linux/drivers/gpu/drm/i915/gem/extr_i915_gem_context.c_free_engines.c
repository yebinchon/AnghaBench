
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_engines {int num_engines; } ;


 int __free_engines (struct i915_gem_engines*,int ) ;

__attribute__((used)) static void free_engines(struct i915_gem_engines *e)
{
 __free_engines(e, e->num_engines);
}
