
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct devfreq_event_dev {TYPE_1__* desc; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int sprintf (char*,char*,char*) ;
 struct devfreq_event_dev* to_devfreq_event (struct device*) ;

__attribute__((used)) static ssize_t name_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct devfreq_event_dev *edev = to_devfreq_event(dev);

 if (!edev || !edev->desc)
  return -EINVAL;

 return sprintf(buf, "%s\n", edev->desc->name);
}
