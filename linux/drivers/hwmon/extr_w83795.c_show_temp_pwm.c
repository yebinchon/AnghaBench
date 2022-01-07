
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int ** pwm_temp; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,long) ;
 long temp_from_reg (int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;

__attribute__((used)) static ssize_t
show_temp_pwm(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83795_data *data = w83795_update_pwm_config(dev);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 long tmp = temp_from_reg(data->pwm_temp[index][nr]);

 return sprintf(buf, "%ld\n", tmp);
}
