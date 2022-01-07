
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct capi_ctr {unsigned int state; int state_wait_queue; } ;


 unsigned int CAPI_CTR_DETACHED ;
 int DEFINE_WAIT (int ) ;
 int EINTR ;
 int ESRCH ;
 int TASK_INTERRUPTIBLE ;
 int capi_controller_lock ;
 struct capi_ctr* capi_ctr_get (struct capi_ctr*) ;
 int capi_ctr_put (struct capi_ctr*) ;
 int current ;
 int finish_wait (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 int wait ;

__attribute__((used)) static int wait_on_ctr_state(struct capi_ctr *ctr, unsigned int state)
{
 DEFINE_WAIT(wait);
 int retval = 0;

 ctr = capi_ctr_get(ctr);
 if (!ctr)
  return -ESRCH;

 for (;;) {
  prepare_to_wait(&ctr->state_wait_queue, &wait,
    TASK_INTERRUPTIBLE);

  if (ctr->state == state)
   break;
  if (ctr->state == CAPI_CTR_DETACHED) {
   retval = -ESRCH;
   break;
  }
  if (signal_pending(current)) {
   retval = -EINTR;
   break;
  }

  mutex_unlock(&capi_controller_lock);
  schedule();
  mutex_lock(&capi_controller_lock);
 }
 finish_wait(&ctr->state_wait_queue, &wait);

 capi_ctr_put(ctr);

 return retval;
}
