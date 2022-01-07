
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int temp_mode; } ;
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w83795_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_temp_mode(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83795_data *data = dev_get_drvdata(dev);
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index;
 int tmp;

 if (data->temp_mode & (1 << index))
  tmp = 3;
 else
  tmp = 4;

 return sprintf(buf, "%d\n", tmp);
}
