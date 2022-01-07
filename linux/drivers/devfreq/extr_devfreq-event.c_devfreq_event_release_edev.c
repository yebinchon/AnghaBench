
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq_event_dev {int dummy; } ;


 int kfree (struct devfreq_event_dev*) ;
 struct devfreq_event_dev* to_devfreq_event (struct device*) ;

__attribute__((used)) static void devfreq_event_release_edev(struct device *dev)
{
 struct devfreq_event_dev *edev = to_devfreq_event(dev);

 kfree(edev);
}
