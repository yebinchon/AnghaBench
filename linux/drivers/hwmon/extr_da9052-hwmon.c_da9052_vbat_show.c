
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9052_hwmon {int da9052; } ;
typedef int ssize_t ;


 int DA9052_ADC_VBAT ;
 int da9052_adc_manual_read (int ,int ) ;
 struct da9052_hwmon* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;
 int volt_reg_to_mv (int) ;

__attribute__((used)) static ssize_t da9052_vbat_show(struct device *dev,
    struct device_attribute *devattr, char *buf)
{
 struct da9052_hwmon *hwmon = dev_get_drvdata(dev);
 int ret;

 ret = da9052_adc_manual_read(hwmon->da9052, DA9052_ADC_VBAT);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%d\n", volt_reg_to_mv(ret));
}
