
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {int inflight; struct i915_request** active; } ;
struct i915_request {int dummy; } ;


 struct i915_request** memset (int ,int ,int) ;
 int schedule_out (struct i915_request*) ;

__attribute__((used)) static void
cancel_port_requests(struct intel_engine_execlists * const execlists)
{
 struct i915_request * const *port, *rq;



 for (port = execlists->active; (rq = *port); port++)
  schedule_out(rq);
 execlists->active =
  memset(execlists->inflight, 0, sizeof(execlists->inflight));
}
