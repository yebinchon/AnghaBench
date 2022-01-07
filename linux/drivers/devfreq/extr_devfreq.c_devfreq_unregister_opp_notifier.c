
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq {int nb; } ;


 int dev_pm_opp_unregister_notifier (struct device*,int *) ;

int devfreq_unregister_opp_notifier(struct device *dev, struct devfreq *devfreq)
{
 return dev_pm_opp_unregister_notifier(dev, &devfreq->nb);
}
