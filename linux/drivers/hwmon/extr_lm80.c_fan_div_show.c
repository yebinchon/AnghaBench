
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm80_data {int * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int ) ;
 scalar_t__ IS_ERR (struct lm80_data*) ;
 int PTR_ERR (struct lm80_data*) ;
 struct lm80_data* lm80_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_div_show(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct lm80_data *data = lm80_update_device(dev);
 if (IS_ERR(data))
  return PTR_ERR(data);
 return sprintf(buf, "%d\n", DIV_FROM_REG(data->fan_div[nr]));
}
