
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct max6642_data {int * temp_input; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct max6642_data* max6642_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int temp_from_reg10 (int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_max10_show(struct device *dev,
          struct device_attribute *dev_attr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(dev_attr);
 struct max6642_data *data = max6642_update_device(dev);

 return sprintf(buf, "%d\n",
         temp_from_reg10(data->temp_input[attr->index]));
}
