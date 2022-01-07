
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83627hf_data {int* pwm_enable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83627hf_data* w83627hf_update_device (struct device*) ;

__attribute__((used)) static ssize_t
pwm_enable_show(struct device *dev, struct device_attribute *devattr,
  char *buf)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = w83627hf_update_device(dev);
 return sprintf(buf, "%d\n", data->pwm_enable[nr]);
}
