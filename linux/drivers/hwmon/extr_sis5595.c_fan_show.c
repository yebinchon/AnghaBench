
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis5595_data {int * fan_div; int * fan; } ;
struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 struct sis5595_data* sis5595_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev, struct device_attribute *da,
   char *buf)
{
 struct sis5595_data *data = sis5595_update_device(dev);
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 int nr = attr->index;
 return sprintf(buf, "%d\n", FAN_FROM_REG(data->fan[nr],
  DIV_FROM_REG(data->fan_div[nr])));
}
