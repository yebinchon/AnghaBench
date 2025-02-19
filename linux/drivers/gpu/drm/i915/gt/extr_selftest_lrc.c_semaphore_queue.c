
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int i915; } ;
struct i915_vma {int dummy; } ;
struct i915_request {int dummy; } ;
struct i915_gem_context {int dummy; } ;


 int ENOMEM ;
 struct i915_request* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct i915_request*) ;
 int emit_semaphore_chain (struct i915_request*,struct i915_vma*,int) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* igt_request_alloc (struct i915_gem_context*,struct intel_engine_cs*) ;
 struct i915_gem_context* kernel_context (int ) ;
 int kernel_context_close (struct i915_gem_context*) ;

__attribute__((used)) static struct i915_request *
semaphore_queue(struct intel_engine_cs *engine, struct i915_vma *vma, int idx)
{
 struct i915_gem_context *ctx;
 struct i915_request *rq;
 int err;

 ctx = kernel_context(engine->i915);
 if (!ctx)
  return ERR_PTR(-ENOMEM);

 rq = igt_request_alloc(ctx, engine);
 if (IS_ERR(rq))
  goto out_ctx;

 err = emit_semaphore_chain(rq, vma, idx);
 i915_request_add(rq);
 if (err)
  rq = ERR_PTR(err);

out_ctx:
 kernel_context_close(ctx);
 return rq;
}
