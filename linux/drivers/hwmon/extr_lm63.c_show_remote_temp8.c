
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm63_data {int temp2_offset; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lm63_data* lm63_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 int temp8_from_reg (struct lm63_data*,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_remote_temp8(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm63_data *data = lm63_update_device(dev);
 return sprintf(buf, "%d\n", temp8_from_reg(data, attr->index)
         + data->temp2_offset);
}
