
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct intel_context {int inflight; } ;
struct i915_request {struct intel_context* hw_context; } ;


 struct intel_engine_cs* READ_ONCE (int ) ;
 int __execlists_schedule_out (struct i915_request*,struct intel_engine_cs*) ;
 int i915_request_put (struct i915_request*) ;
 struct intel_engine_cs* ptr_dec (struct intel_engine_cs*) ;
 scalar_t__ ptr_unmask_bits (struct intel_engine_cs*,int) ;
 int trace_i915_request_out (struct i915_request*) ;
 int try_cmpxchg (int *,struct intel_engine_cs**,struct intel_engine_cs*) ;

__attribute__((used)) static inline void
execlists_schedule_out(struct i915_request *rq)
{
 struct intel_context * const ce = rq->hw_context;
 struct intel_engine_cs *cur, *old;

 trace_i915_request_out(rq);

 old = READ_ONCE(ce->inflight);
 do
  cur = ptr_unmask_bits(old, 2) ? ptr_dec(old) : ((void*)0);
 while (!try_cmpxchg(&ce->inflight, &old, cur));
 if (!cur)
  __execlists_schedule_out(rq, old);

 i915_request_put(rq);
}
