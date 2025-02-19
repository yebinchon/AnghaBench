
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8231_data {int * fan_div; int * fan_min; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct vt8231_data* vt8231_update_device (struct device*) ;

__attribute__((used)) static ssize_t fan_min_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct sensor_device_attribute *sensor_attr = to_sensor_dev_attr(attr);
 int nr = sensor_attr->index;
 struct vt8231_data *data = vt8231_update_device(dev);
 return sprintf(buf, "%d\n", FAN_FROM_REG(data->fan_min[nr],
   DIV_FROM_REG(data->fan_div[nr])));
}
