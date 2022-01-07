
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq_event_dev {int dummy; } ;


 int devfreq_event_remove_edev (struct devfreq_event_dev*) ;

__attribute__((used)) static void devm_devfreq_event_release(struct device *dev, void *res)
{
 devfreq_event_remove_edev(*(struct devfreq_event_dev **)res);
}
