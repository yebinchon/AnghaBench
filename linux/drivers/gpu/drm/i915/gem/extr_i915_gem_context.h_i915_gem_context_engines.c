
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_engines {int dummy; } ;
struct i915_gem_context {int engines_mutex; int engines; } ;


 int lockdep_is_held (int *) ;
 struct i915_gem_engines* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline struct i915_gem_engines *
i915_gem_context_engines(struct i915_gem_context *ctx)
{
 return rcu_dereference_protected(ctx->engines,
      lockdep_is_held(&ctx->engines_mutex));
}
