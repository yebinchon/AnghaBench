
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83795_data {int* pwm_fcms; int* pwm_tfmr; } ;
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;

__attribute__((used)) static ssize_t
show_pwm_enable(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 struct w83795_data *data = w83795_update_pwm_config(dev);
 int index = sensor_attr->index;
 u8 tmp;


 if (data->pwm_fcms[0] & (1 << index)) {
  tmp = 2;
  goto out;
 }

 for (tmp = 0; tmp < 6; tmp++) {
  if (data->pwm_tfmr[tmp] & (1 << index)) {
   tmp = 3;
   goto out;
  }
 }

 tmp = 1;

out:
 return sprintf(buf, "%u\n", tmp);
}
