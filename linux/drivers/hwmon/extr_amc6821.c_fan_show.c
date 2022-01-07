
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int* fan; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct amc6821_data* amc6821_update_device (struct device*) ;
 int sprintf (char*,char*,...) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t fan_show(struct device *dev, struct device_attribute *devattr,
   char *buf)
{
 struct amc6821_data *data = amc6821_update_device(dev);
 int ix = to_sensor_dev_attr(devattr)->index;
 if (0 == data->fan[ix])
  return sprintf(buf, "0");
 return sprintf(buf, "%d\n", (int)(6000000 / data->fan[ix]));
}
