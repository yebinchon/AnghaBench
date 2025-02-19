
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emc2103_data {int fan_tach; int fan_multiplier; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FAN_RPM_FACTOR ;
 struct emc2103_data* emc2103_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
fan1_input_show(struct device *dev, struct device_attribute *da, char *buf)
{
 struct emc2103_data *data = emc2103_update_device(dev);
 int rpm = 0;
 if (data->fan_tach != 0)
  rpm = (FAN_RPM_FACTOR * data->fan_multiplier) / data->fan_tach;
 return sprintf(buf, "%d\n", rpm);
}
