
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int dummy; } ;
struct i915_active_request {int request; } ;


 int barrier () ;
 scalar_t__ i915_request_completed (struct i915_request*) ;
 struct i915_request* i915_request_get_rcu (struct i915_request*) ;
 int i915_request_put (struct i915_request*) ;
 struct i915_request* rcu_access_pointer (int ) ;
 struct i915_request* rcu_dereference (int ) ;
 struct i915_request* rcu_pointer_handoff (struct i915_request*) ;

__attribute__((used)) static inline struct i915_request *
__i915_active_request_get_rcu(const struct i915_active_request *active)
{
 do {
  struct i915_request *request;

  request = rcu_dereference(active->request);
  if (!request || i915_request_completed(request))
   return ((void*)0);
  barrier();

  request = i915_request_get_rcu(request);
  if (!request || request == rcu_access_pointer(active->request))
   return rcu_pointer_handoff(request);

  i915_request_put(request);
 } while (1);
}
