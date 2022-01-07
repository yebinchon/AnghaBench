
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct axp20x_pek {TYPE_1__* info; } ;
typedef int ssize_t ;
struct TYPE_2__ {int startup_mask; int startup_time; } ;


 int axp20x_show_attr (struct device*,int ,int ,char*) ;
 struct axp20x_pek* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t axp20x_show_attr_startup(struct device *dev,
     struct device_attribute *attr,
     char *buf)
{
 struct axp20x_pek *axp20x_pek = dev_get_drvdata(dev);

 return axp20x_show_attr(dev, axp20x_pek->info->startup_time,
    axp20x_pek->info->startup_mask, buf);
}
