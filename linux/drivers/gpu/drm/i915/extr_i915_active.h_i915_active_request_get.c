
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int dummy; } ;
struct i915_request {int dummy; } ;
struct i915_active_request {int dummy; } ;


 int i915_active_request_peek (struct i915_active_request const*,struct mutex*) ;
 struct i915_request* i915_request_get (int ) ;

__attribute__((used)) static inline struct i915_request *
i915_active_request_get(const struct i915_active_request *active,
   struct mutex *mutex)
{
 return i915_request_get(i915_active_request_peek(active, mutex));
}
