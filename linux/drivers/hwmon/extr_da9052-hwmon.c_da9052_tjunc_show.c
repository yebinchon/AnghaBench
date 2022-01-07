
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9052_hwmon {int da9052; } ;
typedef int ssize_t ;


 int DA9052_TJUNC_RES_REG ;
 int DA9052_T_OFFSET_REG ;
 int da9052_reg_read (int ,int ) ;
 struct da9052_hwmon* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t da9052_tjunc_show(struct device *dev,
     struct device_attribute *devattr, char *buf)
{
 struct da9052_hwmon *hwmon = dev_get_drvdata(dev);
 int tjunc;
 int toffset;

 tjunc = da9052_reg_read(hwmon->da9052, DA9052_TJUNC_RES_REG);
 if (tjunc < 0)
  return tjunc;

 toffset = da9052_reg_read(hwmon->da9052, DA9052_T_OFFSET_REG);
 if (toffset < 0)
  return toffset;





 return sprintf(buf, "%d\n", 1708 * (tjunc - toffset) - 108800);
}
