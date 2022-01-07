
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; } ;
struct i915_request {struct intel_engine_cs* engine; } ;


 int __i915_request_submit (struct i915_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i915_request_submit(struct i915_request *request)
{
 struct intel_engine_cs *engine = request->engine;
 unsigned long flags;


 spin_lock_irqsave(&engine->active.lock, flags);

 __i915_request_submit(request);

 spin_unlock_irqrestore(&engine->active.lock, flags);
}
