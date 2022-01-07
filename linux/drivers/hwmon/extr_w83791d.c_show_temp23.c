
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83791d_data {int ** temp_add; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP23_FROM_REG (int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83791d_data* w83791d_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_temp23(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct sensor_device_attribute_2 *attr = to_sensor_dev_attr_2(devattr);
 struct w83791d_data *data = w83791d_update_device(dev);
 int nr = attr->nr;
 int index = attr->index;
 return sprintf(buf, "%d\n", TEMP23_FROM_REG(data->temp_add[nr][index]));
}
