
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfreq {TYPE_1__* governor; scalar_t__ resume_freq; int suspend_count; } ;
struct TYPE_2__ {int (* event_handler ) (struct devfreq*,int ,int *) ;} ;


 int DEVFREQ_GOV_RESUME ;
 int EINVAL ;
 int atomic_dec_return (int *) ;
 int devfreq_set_target (struct devfreq*,scalar_t__,int ) ;
 int stub1 (struct devfreq*,int ,int *) ;

int devfreq_resume_device(struct devfreq *devfreq)
{
 int ret;

 if (!devfreq)
  return -EINVAL;

 if (atomic_dec_return(&devfreq->suspend_count) >= 1)
  return 0;

 if (devfreq->resume_freq) {
  ret = devfreq_set_target(devfreq, devfreq->resume_freq, 0);
  if (ret)
   return ret;
 }

 if (devfreq->governor) {
  ret = devfreq->governor->event_handler(devfreq,
     DEVFREQ_GOV_RESUME, ((void*)0));
  if (ret)
   return ret;
 }

 return 0;
}
