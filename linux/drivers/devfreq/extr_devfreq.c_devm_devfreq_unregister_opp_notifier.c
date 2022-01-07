
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_devfreq_dev_match ;
 int devm_devfreq_opp_release ;
 int devres_release (struct device*,int ,int ,struct devfreq*) ;

void devm_devfreq_unregister_opp_notifier(struct device *dev,
      struct devfreq *devfreq)
{
 WARN_ON(devres_release(dev, devm_devfreq_opp_release,
          devm_devfreq_dev_match, devfreq));
}
