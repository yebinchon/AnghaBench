
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct axp20x_pek {TYPE_1__* info; } ;
typedef int ssize_t ;
struct TYPE_2__ {int shutdown_mask; int shutdown_time; } ;


 int axp20x_store_attr (struct device*,int ,int ,char const*,size_t) ;
 struct axp20x_pek* dev_get_drvdata (struct device*) ;

__attribute__((used)) static ssize_t axp20x_store_attr_shutdown(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct axp20x_pek *axp20x_pek = dev_get_drvdata(dev);

 return axp20x_store_attr(dev, axp20x_pek->info->shutdown_time,
     axp20x_pek->info->shutdown_mask, buf, count);
}
