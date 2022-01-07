
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hwmon_device_attribute {int type; int name; scalar_t__ index; int attr; TYPE_1__* ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef enum hwmon_sensor_types { ____Placeholder_hwmon_sensor_types } hwmon_sensor_types ;
struct TYPE_2__ {int (* read_string ) (struct device*,int,int ,scalar_t__,char const**) ;} ;


 scalar_t__ hwmon_attr_base (int) ;
 int sprintf (char*,char*,char const*) ;
 int stub1 (struct device*,int,int ,scalar_t__,char const**) ;
 struct hwmon_device_attribute* to_hwmon_attr (struct device_attribute*) ;
 int trace_hwmon_attr_show_string (scalar_t__,int ,char const*) ;

__attribute__((used)) static ssize_t hwmon_attr_show_string(struct device *dev,
          struct device_attribute *devattr,
          char *buf)
{
 struct hwmon_device_attribute *hattr = to_hwmon_attr(devattr);
 enum hwmon_sensor_types type = hattr->type;
 const char *s;
 int ret;

 ret = hattr->ops->read_string(dev, hattr->type, hattr->attr,
          hattr->index, &s);
 if (ret < 0)
  return ret;

 trace_hwmon_attr_show_string(hattr->index + hwmon_attr_base(type),
         hattr->name, s);

 return sprintf(buf, "%s\n", s);
}
