
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_execlists {struct i915_request** active; } ;
struct intel_engine_cs {struct intel_engine_execlists execlists; } ;
struct i915_request {int dummy; } ;
struct drm_i915_error_engine {unsigned int num_ports; int * execlist; } ;


 int record_request (int ,int *) ;

__attribute__((used)) static void error_record_engine_execlists(const struct intel_engine_cs *engine,
       struct drm_i915_error_engine *ee)
{
 const struct intel_engine_execlists * const execlists = &engine->execlists;
 struct i915_request * const *port = execlists->active;
 unsigned int n = 0;

 while (*port)
  record_request(*port++, &ee->execlist[n++]);

 ee->num_ports = n;
}
