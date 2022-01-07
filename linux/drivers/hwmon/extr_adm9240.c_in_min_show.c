
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int * in_min; } ;
typedef int ssize_t ;


 int IN_FROM_REG (int ,size_t) ;
 struct adm9240_data* adm9240_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_min_show(struct device *dev,
      struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adm9240_data *data = adm9240_update_device(dev);
 return sprintf(buf, "%d\n", IN_FROM_REG(data->in_min[attr->index],
    attr->index));
}
