
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int CHANNEL_SHIFT ;
 int DIMM_MASK ;
 int sprintf (char*,char*,int,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_label(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 return sprintf(buf, "Ch. %d DIMM %d\n", attr->index >> CHANNEL_SHIFT,
         attr->index & DIMM_MASK);
}
