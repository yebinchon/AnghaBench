
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int request; } ;
struct intel_timeline {int mutex; TYPE_1__ last_request; } ;
struct intel_context {struct intel_timeline* timeline; } ;
struct i915_request {int dummy; } ;


 int HZ ;
 struct i915_request* i915_request_get_rcu (struct i915_request*) ;
 int i915_request_put (struct i915_request*) ;
 int i915_request_retire_upto (struct i915_request*) ;
 long i915_request_wait (struct i915_request*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i915_request* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int context_sync(struct intel_context *ce)
{
 struct intel_timeline *tl = ce->timeline;
 int err = 0;

 mutex_lock(&tl->mutex);
 do {
  struct i915_request *rq;
  long timeout;

  rcu_read_lock();
  rq = rcu_dereference(tl->last_request.request);
  if (rq)
   rq = i915_request_get_rcu(rq);
  rcu_read_unlock();
  if (!rq)
   break;

  timeout = i915_request_wait(rq, 0, HZ / 10);
  if (timeout < 0)
   err = timeout;
  else
   i915_request_retire_upto(rq);

  i915_request_put(rq);
 } while (!err);
 mutex_unlock(&tl->mutex);

 return err;
}
