
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fschmd_data {int* fan_min; scalar_t__ kind; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct fschmd_data* fschmd_update_device (struct device*) ;
 scalar_t__ fscsyl ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t pwm_auto_point1_pwm_show(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct fschmd_data *data = fschmd_update_device(dev);
 int val = data->fan_min[index];


 if (val || data->kind == fscsyl)
  val = val / 2 + 128;

 return sprintf(buf, "%d\n", val);
}
