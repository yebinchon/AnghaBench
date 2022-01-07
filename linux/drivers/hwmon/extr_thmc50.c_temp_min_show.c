
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thmc50_data {int* temp_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int sprintf (char*,char*,int) ;
 struct thmc50_data* thmc50_update_device (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t temp_min_show(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct thmc50_data *data = thmc50_update_device(dev);
 return sprintf(buf, "%d\n", data->temp_min[nr] * 1000);
}
