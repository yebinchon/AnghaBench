
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83793_data {int* fan; int* fan_min; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FAN_FROM_REG (int) ;
 int FAN_INPUT ;
 int sprintf (char*,char*,int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83793_data* w83793_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_fan(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct w83793_data *data = w83793_update_device(dev);
 u16 val;

 if (nr == FAN_INPUT)
  val = data->fan[index] & 0x0fff;
 else
  val = data->fan_min[index] & 0x0fff;

 return sprintf(buf, "%lu\n", FAN_FROM_REG(val));
}
