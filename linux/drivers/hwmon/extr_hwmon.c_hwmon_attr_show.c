
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwmon_device_attribute {int name; int type; scalar_t__ index; int attr; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* read ) (struct device*,int ,int ,scalar_t__,long*) ;} ;


 scalar_t__ hwmon_attr_base (int ) ;
 int sprintf (char*,char*,long) ;
 int stub1 (struct device*,int ,int ,scalar_t__,long*) ;
 struct hwmon_device_attribute* to_hwmon_attr (struct device_attribute*) ;
 int trace_hwmon_attr_show (scalar_t__,int ,long) ;

__attribute__((used)) static ssize_t hwmon_attr_show(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 struct hwmon_device_attribute *hattr = to_hwmon_attr(devattr);
 long val;
 int ret;

 ret = hattr->ops->read(dev, hattr->type, hattr->attr, hattr->index,
          &val);
 if (ret < 0)
  return ret;

 trace_hwmon_attr_show(hattr->index + hwmon_attr_base(hattr->type),
         hattr->name, val);

 return sprintf(buf, "%ld\n", val);
}
