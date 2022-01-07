
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abituguru_data {int** pwm_settings; } ;
typedef int ssize_t ;


 int ABIT_UGURU_FAN_PWM_ENABLE ;
 struct abituguru_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm_enable(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct abituguru_data *data = dev_get_drvdata(dev);
 int res = 0;
 if (data->pwm_settings[attr->index][0] & ABIT_UGURU_FAN_PWM_ENABLE)
  res = 2;
 return sprintf(buf, "%d\n", res);
}
