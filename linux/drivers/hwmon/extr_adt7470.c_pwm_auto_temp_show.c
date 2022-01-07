
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7470_data {int* pwm_auto_temp; } ;
typedef int ssize_t ;


 int ADT7470_PWM_ALL_TEMPS ;
 struct adt7470_data* adt7470_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_auto_temp_show(struct device *dev,
      struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7470_data *data = adt7470_update_device(dev);
 u8 ctrl = data->pwm_auto_temp[attr->index];

 if (ctrl)
  return sprintf(buf, "%d\n", 1 << (ctrl - 1));
 else
  return sprintf(buf, "%d\n", ADT7470_PWM_ALL_TEMPS);
}
