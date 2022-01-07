
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7462_data {int* temp_max; } ;
typedef int ssize_t ;


 struct adt7462_data* adt7462_update_device (struct device*) ;
 int sprintf (char*,char*,...) ;
 int temp_enabled (struct adt7462_data*,size_t) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_max_show(struct device *dev,
        struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7462_data *data = adt7462_update_device(dev);

 if (!temp_enabled(data, attr->index))
  return sprintf(buf, "0\n");

 return sprintf(buf, "%d\n", 1000 * (data->temp_max[attr->index] - 64));
}
