
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pc87427_data {int * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int fan_from_reg (int ) ;
 struct pc87427_data* pc87427_update_device (struct device*) ;
 int sprintf (char*,char*,int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_min_show(struct device *dev,
       struct device_attribute *devattr, char *buf)
{
 struct pc87427_data *data = pc87427_update_device(dev);
 int nr = to_sensor_dev_attr(devattr)->index;

 return sprintf(buf, "%lu\n", fan_from_reg(data->fan_min[nr]));
}
