
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {TYPE_1__* timeline; } ;
struct TYPE_2__ {int mutex; } ;


 int HZ ;
 int i915_request_add (struct i915_request*) ;
 int i915_request_get (struct i915_request*) ;
 int i915_request_put (struct i915_request*) ;
 int i915_request_retire_upto (struct i915_request*) ;
 long i915_request_wait (struct i915_request*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int request_sync(struct i915_request *rq)
{
 long timeout;
 int err = 0;

 i915_request_get(rq);

 i915_request_add(rq);
 timeout = i915_request_wait(rq, 0, HZ / 10);
 if (timeout < 0) {
  err = timeout;
 } else {
  mutex_lock(&rq->timeline->mutex);
  i915_request_retire_upto(rq);
  mutex_unlock(&rq->timeline->mutex);
 }

 i915_request_put(rq);

 return err;
}
