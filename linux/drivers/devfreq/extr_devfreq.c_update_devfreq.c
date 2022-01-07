
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct devfreq {int min_freq; int scaling_min_freq; int max_freq; int scaling_max_freq; TYPE_1__* governor; int lock; } ;
struct TYPE_2__ {int (* get_target_freq ) (struct devfreq*,unsigned long*) ;} ;


 int DEVFREQ_FLAG_LEAST_UPPER_BOUND ;
 int EINVAL ;
 int WARN (int,char*) ;
 int devfreq_set_target (struct devfreq*,unsigned long,int ) ;
 unsigned long max (int ,int ) ;
 unsigned long min (int ,int ) ;
 int mutex_is_locked (int *) ;
 int stub1 (struct devfreq*,unsigned long*) ;

int update_devfreq(struct devfreq *devfreq)
{
 unsigned long freq, min_freq, max_freq;
 int err = 0;
 u32 flags = 0;

 if (!mutex_is_locked(&devfreq->lock)) {
  WARN(1, "devfreq->lock must be locked by the caller.\n");
  return -EINVAL;
 }

 if (!devfreq->governor)
  return -EINVAL;


 err = devfreq->governor->get_target_freq(devfreq, &freq);
 if (err)
  return err;
 max_freq = min(devfreq->scaling_max_freq, devfreq->max_freq);
 min_freq = max(devfreq->scaling_min_freq, devfreq->min_freq);

 if (freq < min_freq) {
  freq = min_freq;
  flags &= ~DEVFREQ_FLAG_LEAST_UPPER_BOUND;
 }
 if (freq > max_freq) {
  freq = max_freq;
  flags |= DEVFREQ_FLAG_LEAST_UPPER_BOUND;
 }

 return devfreq_set_target(devfreq, freq, flags);

}
