
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vc4_dev {scalar_t__ finished_seqno; int job_wait_queue; } ;
struct drm_device {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int ERESTARTSYS ;
 int ETIME ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 unsigned long jiffies ;
 unsigned long nsecs_to_jiffies (scalar_t__) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int schedule_timeout (unsigned long) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;
 struct vc4_dev* to_vc4_dev (struct drm_device*) ;
 int trace_vc4_wait_for_seqno_begin (struct drm_device*,scalar_t__,scalar_t__) ;
 int trace_vc4_wait_for_seqno_end (struct drm_device*,scalar_t__) ;
 int wait ;

int
vc4_wait_for_seqno(struct drm_device *dev, uint64_t seqno, uint64_t timeout_ns,
     bool interruptible)
{
 struct vc4_dev *vc4 = to_vc4_dev(dev);
 int ret = 0;
 unsigned long timeout_expire;
 DEFINE_WAIT(wait);

 if (vc4->finished_seqno >= seqno)
  return 0;

 if (timeout_ns == 0)
  return -ETIME;

 timeout_expire = jiffies + nsecs_to_jiffies(timeout_ns);

 trace_vc4_wait_for_seqno_begin(dev, seqno, timeout_ns);
 for (;;) {
  prepare_to_wait(&vc4->job_wait_queue, &wait,
    interruptible ? TASK_INTERRUPTIBLE :
    TASK_UNINTERRUPTIBLE);

  if (interruptible && signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }

  if (vc4->finished_seqno >= seqno)
   break;

  if (timeout_ns != ~0ull) {
   if (time_after_eq(jiffies, timeout_expire)) {
    ret = -ETIME;
    break;
   }
   schedule_timeout(timeout_expire - jiffies);
  } else {
   schedule();
  }
 }

 finish_wait(&vc4->job_wait_queue, &wait);
 trace_vc4_wait_for_seqno_end(dev, seqno);

 return ret;
}
