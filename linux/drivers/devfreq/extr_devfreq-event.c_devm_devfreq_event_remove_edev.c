
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq_event_dev {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_devfreq_event_match ;
 int devm_devfreq_event_release ;
 int devres_release (struct device*,int ,int ,struct devfreq_event_dev*) ;

void devm_devfreq_event_remove_edev(struct device *dev,
    struct devfreq_event_dev *edev)
{
 WARN_ON(devres_release(dev, devm_devfreq_event_release,
          devm_devfreq_event_match, edev));
}
