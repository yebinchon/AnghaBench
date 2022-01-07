
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emc6w201_data {scalar_t__** temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; int nr; } ;


 struct emc6w201_data* emc6w201_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_show(struct device *dev, struct device_attribute *devattr,
    char *buf)
{
 struct emc6w201_data *data = emc6w201_update_device(dev);
 int sf = to_sensor_dev_attr_2(devattr)->index;
 int nr = to_sensor_dev_attr_2(devattr)->nr;

 return sprintf(buf, "%d\n", (int)data->temp[sf][nr] * 1000);
}
