
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int* dts_read_vrlsb; int * dts; } ;
struct sensor_device_attribute_2 {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,long) ;
 long temp_from_reg (int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83795_data* w83795_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_dts(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index;
 struct w83795_data *data = w83795_update_device(dev);
 long temp = temp_from_reg(data->dts[index]);

 temp += (data->dts_read_vrlsb[index] >> 6) * 250;
 return sprintf(buf, "%ld\n", temp);
}
