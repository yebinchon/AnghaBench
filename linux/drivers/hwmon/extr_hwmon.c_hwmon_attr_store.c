
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwmon_device_attribute {int name; int type; scalar_t__ index; int attr; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* write ) (struct device*,int ,int ,scalar_t__,long) ;} ;


 scalar_t__ hwmon_attr_base (int ) ;
 int kstrtol (char const*,int,long*) ;
 int stub1 (struct device*,int ,int ,scalar_t__,long) ;
 struct hwmon_device_attribute* to_hwmon_attr (struct device_attribute*) ;
 int trace_hwmon_attr_store (scalar_t__,int ,long) ;

__attribute__((used)) static ssize_t hwmon_attr_store(struct device *dev,
    struct device_attribute *devattr,
    const char *buf, size_t count)
{
 struct hwmon_device_attribute *hattr = to_hwmon_attr(devattr);
 long val;
 int ret;

 ret = kstrtol(buf, 10, &val);
 if (ret < 0)
  return ret;

 ret = hattr->ops->write(dev, hattr->type, hattr->attr, hattr->index,
    val);
 if (ret < 0)
  return ret;

 trace_hwmon_attr_store(hattr->index + hwmon_attr_base(hattr->type),
          hattr->name, val);

 return count;
}
