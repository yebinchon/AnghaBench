
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int * dts_ext; } ;
struct sensor_device_attribute_2 {int nr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w83795_data* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,long) ;
 long temp_from_reg (int ) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_dts_ext(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 struct w83795_data *data = dev_get_drvdata(dev);
 long temp = temp_from_reg(data->dts_ext[nr]);

 return sprintf(buf, "%ld\n", temp);
}
