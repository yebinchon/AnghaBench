
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct abx500_temp {int * min; } ;
typedef int ssize_t ;


 struct abx500_temp* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t min_show(struct device *dev, struct device_attribute *devattr,
   char *buf)
{
 struct abx500_temp *data = dev_get_drvdata(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);

 return sprintf(buf, "%lu\n", data->min[attr->index]);
}
