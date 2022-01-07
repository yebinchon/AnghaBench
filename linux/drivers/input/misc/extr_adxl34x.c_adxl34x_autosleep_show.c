
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int power_mode; } ;
struct adxl34x {TYPE_1__ pdata; } ;
typedef int ssize_t ;


 int PCTL_AUTO_SLEEP ;
 int PCTL_LINK ;
 struct adxl34x* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t adxl34x_autosleep_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct adxl34x *ac = dev_get_drvdata(dev);

 return sprintf(buf, "%u\n",
  ac->pdata.power_mode & (PCTL_AUTO_SLEEP | PCTL_LINK) ? 1 : 0);
}
