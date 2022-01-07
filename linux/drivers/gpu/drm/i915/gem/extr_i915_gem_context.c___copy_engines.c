
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_engines {unsigned int num_engines; int ** engines; int rcu; } ;


 int ENOMEM ;
 struct i915_gem_engines* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int engines ;
 int init_rcu_head (int *) ;
 int * intel_context_get (int *) ;
 struct i915_gem_engines* kmalloc (int ,int ) ;
 int struct_size (struct i915_gem_engines*,int ,unsigned int) ;

__attribute__((used)) static struct i915_gem_engines *
__copy_engines(struct i915_gem_engines *e)
{
 struct i915_gem_engines *copy;
 unsigned int n;

 copy = kmalloc(struct_size(e, engines, e->num_engines), GFP_KERNEL);
 if (!copy)
  return ERR_PTR(-ENOMEM);

 init_rcu_head(&copy->rcu);
 for (n = 0; n < e->num_engines; n++) {
  if (e->engines[n])
   copy->engines[n] = intel_context_get(e->engines[n]);
  else
   copy->engines[n] = ((void*)0);
 }
 copy->num_engines = n;

 return copy;
}
