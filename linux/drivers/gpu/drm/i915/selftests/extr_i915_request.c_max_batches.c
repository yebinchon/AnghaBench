
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_cs {int dummy; } ;
struct i915_request {int reserved_space; int head; TYPE_1__* ring; } ;
struct i915_gem_context {int i915; } ;
struct TYPE_2__ {int size; int emit; } ;


 scalar_t__ HAS_EXECLISTS (int ) ;
 int INT_MAX ;
 scalar_t__ IS_ERR (struct i915_request*) ;
 int PTR_ERR (struct i915_request*) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* igt_request_alloc (struct i915_gem_context*,struct intel_engine_cs*) ;

__attribute__((used)) static int
max_batches(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
{
 struct i915_request *rq;
 int ret;
 if (HAS_EXECLISTS(ctx->i915))
  return INT_MAX;

 rq = igt_request_alloc(ctx, engine);
 if (IS_ERR(rq)) {
  ret = PTR_ERR(rq);
 } else {
  int sz;

  ret = rq->ring->size - rq->reserved_space;
  i915_request_add(rq);

  sz = rq->ring->emit - rq->head;
  if (sz < 0)
   sz += rq->ring->size;
  ret /= sz;
  ret /= 2;
 }

 return ret;
}
