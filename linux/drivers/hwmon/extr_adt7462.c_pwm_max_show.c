
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int pwm_max; } ;
typedef int ssize_t ;


 struct adt7462_data* adt7462_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pwm_max_show(struct device *dev,
       struct device_attribute *devattr, char *buf)
{
 struct adt7462_data *data = adt7462_update_device(dev);
 return sprintf(buf, "%d\n", data->pwm_max);
}
