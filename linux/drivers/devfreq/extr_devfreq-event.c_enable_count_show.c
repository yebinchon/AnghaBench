
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq_event_dev {int enable_count; int desc; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sprintf (char*,char*,int) ;
 struct devfreq_event_dev* to_devfreq_event (struct device*) ;

__attribute__((used)) static ssize_t enable_count_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct devfreq_event_dev *edev = to_devfreq_event(dev);

 if (!edev || !edev->desc)
  return -EINVAL;

 return sprintf(buf, "%d\n", edev->enable_count);
}
