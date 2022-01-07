
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq {int stop_polling; int work; int lock; int previous_freq; } ;


 int cancel_delayed_work_sync (int *) ;
 int devfreq_update_status (struct devfreq*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void devfreq_monitor_suspend(struct devfreq *devfreq)
{
 mutex_lock(&devfreq->lock);
 if (devfreq->stop_polling) {
  mutex_unlock(&devfreq->lock);
  return;
 }

 devfreq_update_status(devfreq, devfreq->previous_freq);
 devfreq->stop_polling = 1;
 mutex_unlock(&devfreq->lock);
 cancel_delayed_work_sync(&devfreq->work);
}
