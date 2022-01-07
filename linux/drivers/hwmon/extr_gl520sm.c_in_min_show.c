
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct gl520_data {int * in_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int IN_FROM_REG (int ) ;
 int VDD_FROM_REG (int ) ;
 struct gl520_data* gl520_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_min_show(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 int n = to_sensor_dev_attr(attr)->index;
 struct gl520_data *data = gl520_update_device(dev);
 u8 r = data->in_min[n];

 if (n == 0)
  return sprintf(buf, "%d\n", VDD_FROM_REG(r));
 else
  return sprintf(buf, "%d\n", IN_FROM_REG(r));
}
