
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct ltc2990_data {int i2c; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct ltc2990_data* dev_get_drvdata (struct device*) ;
 int ltc2990_get_value (int ,int ,int*) ;
 int snprintf (char*,int ,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static ssize_t ltc2990_value_show(struct device *dev,
      struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct ltc2990_data *data = dev_get_drvdata(dev);
 int value;
 int ret;

 ret = ltc2990_get_value(data->i2c, attr->index, &value);
 if (unlikely(ret < 0))
  return ret;

 return snprintf(buf, PAGE_SIZE, "%d\n", value);
}
