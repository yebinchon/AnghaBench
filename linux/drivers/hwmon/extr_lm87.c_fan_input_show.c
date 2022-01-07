
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm87_data {int * fan_div; int * fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int FAN_DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 struct lm87_data* lm87_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_input_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct lm87_data *data = lm87_update_device(dev);
 int nr = to_sensor_dev_attr(attr)->index;

 return sprintf(buf, "%d\n", FAN_FROM_REG(data->fan[nr],
         FAN_DIV_FROM_REG(data->fan_div[nr])));
}
