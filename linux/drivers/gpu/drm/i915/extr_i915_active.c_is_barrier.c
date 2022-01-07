
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_active_request {int request; } ;


 int IS_ERR (int ) ;
 int rcu_access_pointer (int ) ;

__attribute__((used)) static inline bool is_barrier(const struct i915_active_request *active)
{
 return IS_ERR(rcu_access_pointer(active->request));
}
