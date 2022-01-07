
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq {int work; } ;


 int cancel_delayed_work_sync (int *) ;

void devfreq_monitor_stop(struct devfreq *devfreq)
{
 cancel_delayed_work_sync(&devfreq->work);
}
