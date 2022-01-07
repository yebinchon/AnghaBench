
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m1_data {int * pwm; } ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PWM_EN_FROM_REG (int ) ;
 struct smsc47m1_data* smsc47m1_update_device (struct device*,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_en_show(struct device *dev,
      struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct smsc47m1_data *data = smsc47m1_update_device(dev, 0);
 return sprintf(buf, "%d\n", PWM_EN_FROM_REG(data->pwm[attr->index]));
}
