
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct ds620_data {int* temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct ds620_data*) ;
 int PTR_ERR (struct ds620_data*) ;
 struct ds620_data* ds620_update_client (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *da,
    char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ds620_data *data = ds620_update_client(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%d\n", ((data->temp[attr->index] / 8) * 625) / 10);
}
