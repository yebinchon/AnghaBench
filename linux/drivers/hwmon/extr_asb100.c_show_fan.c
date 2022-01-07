
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asb100_data {int * fan_div; int * fan; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 struct asb100_data* asb100_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct asb100_data *data = asb100_update_device(dev);
 return sprintf(buf, "%d\n", FAN_FROM_REG(data->fan[nr],
  DIV_FROM_REG(data->fan_div[nr])));
}
