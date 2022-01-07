
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pc87427_data {int * pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct pc87427_data* pc87427_update_device (struct device*) ;
 int pwm_enable_from_reg (int ) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_enable_show(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 struct pc87427_data *data = pc87427_update_device(dev);
 int nr = to_sensor_dev_attr(devattr)->index;
 int pwm_enable;

 pwm_enable = pwm_enable_from_reg(data->pwm_enable[nr]);
 if (pwm_enable < 0)
  return pwm_enable;
 return sprintf(buf, "%d\n", pwm_enable);
}
