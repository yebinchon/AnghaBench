
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {int* pwmenable; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83792d_data* w83792d_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_pwmenable(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index - 1;
 struct w83792d_data *data = w83792d_update_device(dev);
 long pwm_enable_tmp = 1;

 switch (data->pwmenable[nr]) {
 case 0:
  pwm_enable_tmp = 1;
  break;
 case 1:
  pwm_enable_tmp = 3;
  break;
 case 2:
  pwm_enable_tmp = 2;
  break;
 }

 return sprintf(buf, "%ld\n", pwm_enable_tmp);
}
