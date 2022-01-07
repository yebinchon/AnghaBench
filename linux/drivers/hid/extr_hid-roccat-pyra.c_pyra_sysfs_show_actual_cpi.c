
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pyra_device {int actual_cpi; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int parent; } ;


 int PAGE_SIZE ;
 int dev_get_drvdata (int ) ;
 struct pyra_device* hid_get_drvdata (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t pyra_sysfs_show_actual_cpi(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct pyra_device *pyra =
   hid_get_drvdata(dev_get_drvdata(dev->parent->parent));
 return snprintf(buf, PAGE_SIZE, "%d\n", pyra->actual_cpi);
}
