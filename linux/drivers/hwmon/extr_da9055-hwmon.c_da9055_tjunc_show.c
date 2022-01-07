
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9055_hwmon {int da9055; } ;
typedef int ssize_t ;


 int DA9055_ADC_TJUNC ;
 int DA9055_REG_T_OFFSET ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int da9055_adc_manual_read (struct da9055_hwmon*,int ) ;
 int da9055_reg_read (int ,int ) ;
 struct da9055_hwmon* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t da9055_tjunc_show(struct device *dev,
     struct device_attribute *devattr, char *buf)
{
 struct da9055_hwmon *hwmon = dev_get_drvdata(dev);
 int tjunc;
 int toffset;

 tjunc = da9055_adc_manual_read(hwmon, DA9055_ADC_TJUNC);
 if (tjunc < 0)
  return tjunc;

 toffset = da9055_reg_read(hwmon->da9055, DA9055_REG_T_OFFSET);
 if (toffset < 0)
  return toffset;





 return sprintf(buf, "%d\n", DIV_ROUND_CLOSEST(-4084 * (tjunc - toffset)
       + 3076332, 10000));
}
