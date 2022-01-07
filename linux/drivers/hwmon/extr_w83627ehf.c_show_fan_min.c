
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627ehf_data {int (* fan_from_reg_min ) (int ,int ) ;int * fan_div; int * fan_min; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83627ehf_data* w83627ehf_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_fan_min(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83627ehf_data *data = w83627ehf_update_device(dev);
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 return sprintf(buf, "%d\n",
         data->fan_from_reg_min(data->fan_min[nr],
           data->fan_div[nr]));
}
