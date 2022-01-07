
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq {int dummy; } ;


 int devfreq_unregister_opp_notifier (struct device*,struct devfreq*) ;

__attribute__((used)) static void devm_devfreq_opp_release(struct device *dev, void *res)
{
 devfreq_unregister_opp_notifier(dev, *(struct devfreq **)res);
}
