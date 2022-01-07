
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long expires; } ;
struct TYPE_4__ {TYPE_1__ timer; } ;
struct drm_gpu_scheduler {unsigned long timeout; TYPE_2__ work_tdr; } ;


 int MAX_SCHEDULE_TIMEOUT ;
 unsigned long jiffies ;
 scalar_t__ mod_delayed_work (int ,TYPE_2__*,int ) ;
 int system_wq ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

unsigned long drm_sched_suspend_timeout(struct drm_gpu_scheduler *sched)
{
 unsigned long sched_timeout, now = jiffies;

 sched_timeout = sched->work_tdr.timer.expires;





 if (mod_delayed_work(system_wq, &sched->work_tdr, MAX_SCHEDULE_TIMEOUT)
   && time_after(sched_timeout, now))
  return sched_timeout - now;
 else
  return sched->timeout;
}
