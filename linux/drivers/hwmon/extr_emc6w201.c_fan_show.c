
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emc6w201_data {int** fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 struct emc6w201_data* emc6w201_update_device (struct device*) ;
 int sprintf (char*,char*,unsigned int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev, struct device_attribute *devattr,
   char *buf)
{
 struct emc6w201_data *data = emc6w201_update_device(dev);
 int sf = to_sensor_dev_attr_2(devattr)->index;
 int nr = to_sensor_dev_attr_2(devattr)->nr;
 unsigned rpm;

 if (data->fan[sf][nr] == 0 || data->fan[sf][nr] == 0xFFFF)
  rpm = 0;
 else
  rpm = 5400000U / data->fan[sf][nr];

 return sprintf(buf, "%u\n", rpm);
}
