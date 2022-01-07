
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {char** temp_label; size_t* temp_src; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83627ehf_data* w83627ehf_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_temp_label(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83627ehf_data *data = w83627ehf_update_device(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 return sprintf(buf, "%s\n", data->temp_label[data->temp_src[nr]]);
}
