
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct emc2103_data {TYPE_1__* temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int degrees; } ;


 struct emc2103_data* emc2103_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
temp_fault_show(struct device *dev, struct device_attribute *da, char *buf)
{
 int nr = to_sensor_dev_attr(da)->index;
 struct emc2103_data *data = emc2103_update_device(dev);
 bool fault = (data->temp[nr].degrees == -128);
 return sprintf(buf, "%d\n", fault ? 1 : 0);
}
