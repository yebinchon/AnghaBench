
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm80_data {int * fan_div; int ** fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 int DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 scalar_t__ IS_ERR (struct lm80_data*) ;
 int PTR_ERR (struct lm80_data*) ;
 struct lm80_data* lm80_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev, struct device_attribute *attr,
   char *buf)
{
 int index = to_sensor_dev_attr_2(attr)->index;
 int nr = to_sensor_dev_attr_2(attr)->nr;
 struct lm80_data *data = lm80_update_device(dev);
 if (IS_ERR(data))
  return PTR_ERR(data);
 return sprintf(buf, "%d\n", FAN_FROM_REG(data->fan[nr][index],
         DIV_FROM_REG(data->fan_div[index])));
}
