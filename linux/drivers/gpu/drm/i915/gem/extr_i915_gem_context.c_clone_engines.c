
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct intel_engine_cs {int dummy; } ;
struct i915_gem_engines {unsigned long num_engines; TYPE_1__** engines; int rcu; } ;
struct i915_gem_context {int engines; } ;
struct TYPE_4__ {struct intel_engine_cs* engine; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (TYPE_1__*) ;
 int RCU_INIT_POINTER (int ,struct i915_gem_engines*) ;
 int __free_engines (struct i915_gem_engines*,unsigned long) ;
 int engines ;
 int free_engines (int ) ;
 int i915_gem_context_clear_user_engines (struct i915_gem_context*) ;
 struct i915_gem_engines* i915_gem_context_lock_engines (struct i915_gem_context*) ;
 int i915_gem_context_set_user_engines (struct i915_gem_context*) ;
 int i915_gem_context_unlock_engines (struct i915_gem_context*) ;
 int i915_gem_context_user_engines (struct i915_gem_context*) ;
 int init_rcu_head (int *) ;
 TYPE_1__* intel_context_create (struct i915_gem_context*,struct intel_engine_cs*) ;
 scalar_t__ intel_engine_is_virtual (struct intel_engine_cs*) ;
 TYPE_1__* intel_execlists_clone_virtual (struct i915_gem_context*,struct intel_engine_cs*) ;
 struct i915_gem_engines* kmalloc (int ,int ) ;
 int struct_size (struct i915_gem_engines*,int ,unsigned long) ;

__attribute__((used)) static int clone_engines(struct i915_gem_context *dst,
    struct i915_gem_context *src)
{
 struct i915_gem_engines *e = i915_gem_context_lock_engines(src);
 struct i915_gem_engines *clone;
 bool user_engines;
 unsigned long n;

 clone = kmalloc(struct_size(e, engines, e->num_engines), GFP_KERNEL);
 if (!clone)
  goto err_unlock;

 init_rcu_head(&clone->rcu);
 for (n = 0; n < e->num_engines; n++) {
  struct intel_engine_cs *engine;

  if (!e->engines[n]) {
   clone->engines[n] = ((void*)0);
   continue;
  }
  engine = e->engines[n]->engine;
  if (intel_engine_is_virtual(engine))
   clone->engines[n] =
    intel_execlists_clone_virtual(dst, engine);
  else
   clone->engines[n] = intel_context_create(dst, engine);
  if (IS_ERR_OR_NULL(clone->engines[n])) {
   __free_engines(clone, n);
   goto err_unlock;
  }
 }
 clone->num_engines = n;

 user_engines = i915_gem_context_user_engines(src);
 i915_gem_context_unlock_engines(src);

 free_engines(dst->engines);
 RCU_INIT_POINTER(dst->engines, clone);
 if (user_engines)
  i915_gem_context_set_user_engines(dst);
 else
  i915_gem_context_clear_user_engines(dst);
 return 0;

err_unlock:
 i915_gem_context_unlock_engines(src);
 return -ENOMEM;
}
