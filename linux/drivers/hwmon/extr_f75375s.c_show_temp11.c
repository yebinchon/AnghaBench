
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f75375_data {int * temp11; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int TEMP11_FROM_REG (int ) ;
 struct f75375_data* f75375_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp11(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct f75375_data *data = f75375_update_device(dev);
 return sprintf(buf, "%d\n", TEMP11_FROM_REG(data->temp11[nr]));
}
