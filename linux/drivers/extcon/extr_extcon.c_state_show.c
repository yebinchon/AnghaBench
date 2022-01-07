
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extcon_dev {int max_supported; int state; size_t* supported_cable; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int BIT (int) ;
 struct extcon_dev* dev_get_drvdata (struct device*) ;
 TYPE_1__* extcon_info ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t state_show(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 int i, count = 0;
 struct extcon_dev *edev = dev_get_drvdata(dev);

 if (edev->max_supported == 0)
  return sprintf(buf, "%u\n", edev->state);

 for (i = 0; i < edev->max_supported; i++) {
  count += sprintf(buf + count, "%s=%d\n",
    extcon_info[edev->supported_cable[i]].name,
     !!(edev->state & BIT(i)));
 }

 return count;
}
