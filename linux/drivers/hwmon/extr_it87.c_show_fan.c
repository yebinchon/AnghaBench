
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute_2 {int nr; int index; } ;
struct it87_data {int * fan_div; int ** fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 int FAN16_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 scalar_t__ has_16bit_fans (struct it87_data*) ;
 struct it87_data* it87_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
 int nr = sattr->nr;
 int index = sattr->index;
 int speed;
 struct it87_data *data = it87_update_device(dev);

 speed = has_16bit_fans(data) ?
  FAN16_FROM_REG(data->fan[nr][index]) :
  FAN_FROM_REG(data->fan[nr][index],
        DIV_FROM_REG(data->fan_div[nr]));
 return sprintf(buf, "%d\n", speed);
}
