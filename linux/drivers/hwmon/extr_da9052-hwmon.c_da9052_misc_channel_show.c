
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9052_hwmon {int da9052; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int da9052_adc_manual_read (int ,int) ;
 struct da9052_hwmon* dev_get_drvdata (struct device*) ;
 int input_reg_to_mv (int) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t da9052_misc_channel_show(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct da9052_hwmon *hwmon = dev_get_drvdata(dev);
 int channel = to_sensor_dev_attr(devattr)->index;
 int ret;

 ret = da9052_adc_manual_read(hwmon->da9052, channel);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", input_reg_to_mv(ret));
}
