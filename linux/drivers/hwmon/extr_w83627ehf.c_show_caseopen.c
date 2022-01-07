
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83627ehf_data {int caseopen; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83627ehf_data* w83627ehf_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_caseopen(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w83627ehf_data *data = w83627ehf_update_device(dev);

 return sprintf(buf, "%d\n",
  !!(data->caseopen & to_sensor_dev_attr_2(attr)->index));
}
