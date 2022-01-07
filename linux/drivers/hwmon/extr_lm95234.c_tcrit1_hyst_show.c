
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm95234_data {scalar_t__ thyst; scalar_t__* tcrit1; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct lm95234_data* dev_get_drvdata (struct device*) ;
 int lm95234_update_device (struct lm95234_data*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t tcrit1_hyst_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct lm95234_data *data = dev_get_drvdata(dev);
 int index = to_sensor_dev_attr(attr)->index;
 int ret = lm95234_update_device(data);

 if (ret)
  return ret;


 return sprintf(buf, "%d",
         ((int)data->tcrit1[index] - (int)data->thyst) * 1000);
}
