
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int ltc4260_get_value (struct device*,int ) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4260_value_show(struct device *dev,
      struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int value;

 value = ltc4260_get_value(dev, attr->index);
 if (value < 0)
  return value;
 return snprintf(buf, PAGE_SIZE, "%d\n", value);
}
