
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct intel_engine_cs {TYPE_2__ active; } ;
struct TYPE_3__ {int link; } ;
struct i915_request {TYPE_1__ sched; int engine; } ;


 struct intel_engine_cs* READ_ONCE (int ) ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void remove_from_engine(struct i915_request *rq)
{
 struct intel_engine_cs *engine, *locked;







 locked = READ_ONCE(rq->engine);
 spin_lock(&locked->active.lock);
 while (unlikely(locked != (engine = READ_ONCE(rq->engine)))) {
  spin_unlock(&locked->active.lock);
  spin_lock(&engine->active.lock);
  locked = engine;
 }
 list_del(&rq->sched.link);
 spin_unlock(&locked->active.lock);
}
