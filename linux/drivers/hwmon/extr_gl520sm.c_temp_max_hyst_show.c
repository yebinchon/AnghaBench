
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl520_data {int * temp_max_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int TEMP_FROM_REG (int ) ;
 struct gl520_data* gl520_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_max_hyst_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 int n = to_sensor_dev_attr(attr)->index;
 struct gl520_data *data = gl520_update_device(dev);

 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->temp_max_hyst[n]));
}
