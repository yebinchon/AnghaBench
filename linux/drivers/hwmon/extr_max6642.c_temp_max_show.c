
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {size_t nr; } ;
struct max6642_data {int * temp_high; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct max6642_data* max6642_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int temp_from_reg (int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_max_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *attr2 = to_sensor_dev_attr_2(attr);
 struct max6642_data *data = max6642_update_device(dev);

 return sprintf(buf, "%d\n", temp_from_reg(data->temp_high[attr2->nr]));
}
