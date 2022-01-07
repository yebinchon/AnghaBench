
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm63_data {int* pwm1; int pwm1_freq; scalar_t__ pwm_highres; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm63_data* lm63_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_pwm1(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm63_data *data = lm63_update_device(dev);
 int nr = attr->index;
 int pwm;

 if (data->pwm_highres)
  pwm = data->pwm1[nr];
 else
  pwm = data->pwm1[nr] >= 2 * data->pwm1_freq ?
         255 : (data->pwm1[nr] * 255 + data->pwm1_freq) /
         (2 * data->pwm1_freq);

 return sprintf(buf, "%d\n", pwm);
}
