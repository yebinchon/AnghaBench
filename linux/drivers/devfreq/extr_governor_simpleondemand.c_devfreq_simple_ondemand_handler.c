
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq {int dummy; } ;







 int devfreq_interval_update (struct devfreq*,unsigned int*) ;
 int devfreq_monitor_resume (struct devfreq*) ;
 int devfreq_monitor_start (struct devfreq*) ;
 int devfreq_monitor_stop (struct devfreq*) ;
 int devfreq_monitor_suspend (struct devfreq*) ;

__attribute__((used)) static int devfreq_simple_ondemand_handler(struct devfreq *devfreq,
    unsigned int event, void *data)
{
 switch (event) {
 case 130:
  devfreq_monitor_start(devfreq);
  break;

 case 129:
  devfreq_monitor_stop(devfreq);
  break;

 case 132:
  devfreq_interval_update(devfreq, (unsigned int *)data);
  break;

 case 128:
  devfreq_monitor_suspend(devfreq);
  break;

 case 131:
  devfreq_monitor_resume(devfreq);
  break;

 default:
  break;
 }

 return 0;
}
