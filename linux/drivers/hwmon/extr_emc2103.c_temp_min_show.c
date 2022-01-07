
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emc2103_data {int* temp_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct emc2103_data* emc2103_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
temp_min_show(struct device *dev, struct device_attribute *da, char *buf)
{
 int nr = to_sensor_dev_attr(da)->index;
 struct emc2103_data *data = emc2103_update_device(dev);
 int millidegrees = data->temp_min[nr] * 1000;
 return sprintf(buf, "%d\n", millidegrees);
}
