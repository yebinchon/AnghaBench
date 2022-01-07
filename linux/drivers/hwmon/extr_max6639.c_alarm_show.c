
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct max6639_data {int status; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct max6639_data*) ;
 int PTR_ERR (struct max6639_data*) ;
 struct max6639_data* max6639_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t alarm_show(struct device *dev,
     struct device_attribute *dev_attr, char *buf)
{
 struct max6639_data *data = max6639_update_device(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(dev_attr);

 if (IS_ERR(data))
  return PTR_ERR(data);

 return sprintf(buf, "%d\n", !!(data->status & (1 << attr->index)));
}
