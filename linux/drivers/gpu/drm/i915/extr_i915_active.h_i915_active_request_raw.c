
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
struct i915_request {int dummy; } ;
struct i915_active_request {int request; } ;


 int lockdep_is_held (struct mutex*) ;
 struct i915_request* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline struct i915_request *
i915_active_request_raw(const struct i915_active_request *active,
   struct mutex *mutex)
{
 return rcu_dereference_protected(active->request,
      lockdep_is_held(mutex));
}
