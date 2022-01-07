
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int * fan_div; } ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ DIV_FROM_REG (int ) ;
 int sprintf (char*,char*,long) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83781d_data* w83781d_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_fan_div(struct device *dev, struct device_attribute *da, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct w83781d_data *data = w83781d_update_device(dev);
 return sprintf(buf, "%ld\n",
         (long) DIV_FROM_REG(data->fan_div[attr->index]));
}
