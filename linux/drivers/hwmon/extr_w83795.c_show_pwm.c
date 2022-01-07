
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {unsigned int** pwm; int clkin; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;



 int PWM_OUTPUT ;

 unsigned int pwm_freq_from_reg (unsigned int,int ) ;
 int sprintf (char*,char*,unsigned int) ;
 unsigned int time_from_reg (unsigned int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_device (struct device*) ;
 struct w83795_data* w83795_update_pwm_config (struct device*) ;

__attribute__((used)) static ssize_t
show_pwm(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83795_data *data;
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 unsigned int val;

 data = nr == PWM_OUTPUT ? w83795_update_device(dev)
    : w83795_update_pwm_config(dev);

 switch (nr) {
 case 128:
  val = time_from_reg(data->pwm[index][nr]);
  break;
 case 129:
  val = pwm_freq_from_reg(data->pwm[index][nr], data->clkin);
  break;
 default:
  val = data->pwm[index][nr];
  break;
 }

 return sprintf(buf, "%u\n", val);
}
