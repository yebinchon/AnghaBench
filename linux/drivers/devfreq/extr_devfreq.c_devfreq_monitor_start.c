
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfreq {TYPE_1__* profile; int work; } ;
struct TYPE_2__ {scalar_t__ polling_ms; } ;


 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int devfreq_monitor ;
 int devfreq_wq ;
 int msecs_to_jiffies (scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;

void devfreq_monitor_start(struct devfreq *devfreq)
{
 INIT_DEFERRABLE_WORK(&devfreq->work, devfreq_monitor);
 if (devfreq->profile->polling_ms)
  queue_delayed_work(devfreq_wq, &devfreq->work,
   msecs_to_jiffies(devfreq->profile->polling_ms));
}
