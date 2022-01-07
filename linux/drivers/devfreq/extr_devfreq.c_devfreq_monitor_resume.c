
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct devfreq {int stop_polling; unsigned long previous_freq; int lock; TYPE_2__ dev; TYPE_1__* profile; int last_stat_updated; int work; } ;
struct TYPE_3__ {int (* get_cur_freq ) (int ,unsigned long*) ;scalar_t__ polling_ms; } ;


 int delayed_work_pending (int *) ;
 int devfreq_wq ;
 int jiffies ;
 int msecs_to_jiffies (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int stub1 (int ,unsigned long*) ;

void devfreq_monitor_resume(struct devfreq *devfreq)
{
 unsigned long freq;

 mutex_lock(&devfreq->lock);
 if (!devfreq->stop_polling)
  goto out;

 if (!delayed_work_pending(&devfreq->work) &&
   devfreq->profile->polling_ms)
  queue_delayed_work(devfreq_wq, &devfreq->work,
   msecs_to_jiffies(devfreq->profile->polling_ms));

 devfreq->last_stat_updated = jiffies;
 devfreq->stop_polling = 0;

 if (devfreq->profile->get_cur_freq &&
  !devfreq->profile->get_cur_freq(devfreq->dev.parent, &freq))
  devfreq->previous_freq = freq;

out:
 mutex_unlock(&devfreq->lock);
}
