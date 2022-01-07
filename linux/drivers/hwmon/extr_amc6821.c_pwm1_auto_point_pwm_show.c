
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int* pwm1_auto_point_pwm; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct amc6821_data* amc6821_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm1_auto_point_pwm_show(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 int ix = to_sensor_dev_attr(devattr)->index;
 struct amc6821_data *data = amc6821_update_device(dev);
 return sprintf(buf, "%d\n", data->pwm1_auto_point_pwm[ix]);
}
