
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ADT7X10_STATUS ;
 int adt7x10_read_byte (struct device*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t adt7x10_alarm_show(struct device *dev,
      struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int ret;

 ret = adt7x10_read_byte(dev, ADT7X10_STATUS);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", !!(ret & attr->index));
}
