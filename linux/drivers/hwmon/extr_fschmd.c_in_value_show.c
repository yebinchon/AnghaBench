
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fschmd_data {scalar_t__ kind; int* volt; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int* dmi_mult ;
 int* dmi_offset ;
 int dmi_vref ;
 scalar_t__ fscher ;
 struct fschmd_data* fschmd_update_device (struct device*) ;
 scalar_t__ fschrc ;
 int sprintf (char*,char*,int const) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t in_value_show(struct device *dev,
        struct device_attribute *devattr, char *buf)
{
 const int max_reading[3] = { 14200, 6600, 3300 };
 int index = to_sensor_dev_attr(devattr)->index;
 struct fschmd_data *data = fschmd_update_device(dev);

 if (data->kind == fscher || data->kind >= fschrc)
  return sprintf(buf, "%d\n", (data->volt[index] * dmi_vref *
   dmi_mult[index]) / 255 + dmi_offset[index]);
 else
  return sprintf(buf, "%d\n", (data->volt[index] *
   max_reading[index] + 128) / 255);
}
