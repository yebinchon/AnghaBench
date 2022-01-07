
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct da9052_hwmon {int da9052; } ;
typedef int ssize_t ;


 int DA9052_ICHG_AV_REG ;
 int DIV_ROUND_CLOSEST (int,int) ;
 int da9052_reg_read (int ,int ) ;
 struct da9052_hwmon* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t da9052_ich_show(struct device *dev,
          struct device_attribute *devattr, char *buf)
{
 struct da9052_hwmon *hwmon = dev_get_drvdata(dev);
 int ret;

 ret = da9052_reg_read(hwmon->da9052, DA9052_ICHG_AV_REG);
 if (ret < 0)
  return ret;


 return sprintf(buf, "%d\n", DIV_ROUND_CLOSEST(ret * 39, 10));
}
