
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct pmbus_data {int dummy; } ;
struct pmbus_boolean {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int pmbus_get_boolean (struct pmbus_data*,struct pmbus_boolean*,int ) ;
 struct pmbus_data* pmbus_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct pmbus_boolean* to_pmbus_boolean (struct sensor_device_attribute*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pmbus_show_boolean(struct device *dev,
      struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct pmbus_boolean *boolean = to_pmbus_boolean(attr);
 struct pmbus_data *data = pmbus_update_device(dev);
 int val;

 val = pmbus_get_boolean(data, boolean, attr->index);
 if (val < 0)
  return val;
 return snprintf(buf, PAGE_SIZE, "%d\n", val);
}
