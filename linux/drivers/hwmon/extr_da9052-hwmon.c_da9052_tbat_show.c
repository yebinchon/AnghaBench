
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9052_hwmon {int da9052; } ;
typedef int ssize_t ;


 int da9052_adc_read_temp (int ) ;
 struct da9052_hwmon* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t da9052_tbat_show(struct device *dev,
    struct device_attribute *devattr, char *buf)
{
 struct da9052_hwmon *hwmon = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", da9052_adc_read_temp(hwmon->da9052));
}
