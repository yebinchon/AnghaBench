
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** input_names ;
 int sprintf (char*,char*,char*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t powr1220_label_show(struct device *dev,
       struct device_attribute *dev_attr,
       char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(dev_attr);

 return sprintf(buf, "%s\n", input_names[attr->index]);
}
