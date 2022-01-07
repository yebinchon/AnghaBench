
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct ltc4151_data {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ IS_ERR (struct ltc4151_data*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct ltc4151_data*) ;
 int ltc4151_get_value (struct ltc4151_data*,int ) ;
 struct ltc4151_data* ltc4151_update_device (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t ltc4151_value_show(struct device *dev,
      struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ltc4151_data *data = ltc4151_update_device(dev);
 int value;

 if (IS_ERR(data))
  return PTR_ERR(data);

 value = ltc4151_get_value(data, attr->index);
 return snprintf(buf, PAGE_SIZE, "%d\n", value);
}
