
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfreq {int lock; TYPE_1__* profile; int work; scalar_t__ stop_polling; } ;
struct TYPE_2__ {unsigned int polling_ms; } ;


 int cancel_delayed_work_sync (int *) ;
 int devfreq_wq ;
 int msecs_to_jiffies (unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;

void devfreq_interval_update(struct devfreq *devfreq, unsigned int *delay)
{
 unsigned int cur_delay = devfreq->profile->polling_ms;
 unsigned int new_delay = *delay;

 mutex_lock(&devfreq->lock);
 devfreq->profile->polling_ms = new_delay;

 if (devfreq->stop_polling)
  goto out;


 if (!new_delay) {
  mutex_unlock(&devfreq->lock);
  cancel_delayed_work_sync(&devfreq->work);
  return;
 }


 if (!cur_delay) {
  queue_delayed_work(devfreq_wq, &devfreq->work,
   msecs_to_jiffies(devfreq->profile->polling_ms));
  goto out;
 }


 if (cur_delay > new_delay) {
  mutex_unlock(&devfreq->lock);
  cancel_delayed_work_sync(&devfreq->work);
  mutex_lock(&devfreq->lock);
  if (!devfreq->stop_polling)
   queue_delayed_work(devfreq_wq, &devfreq->work,
    msecs_to_jiffies(devfreq->profile->polling_ms));
 }
out:
 mutex_unlock(&devfreq->lock);
}
