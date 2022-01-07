
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tcu; } ;
struct kone_device {TYPE_2__ settings; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_3__ {int parent; } ;


 int PAGE_SIZE ;
 int dev_get_drvdata (int ) ;
 struct kone_device* hid_get_drvdata (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t kone_sysfs_show_tcu(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct kone_device *kone =
   hid_get_drvdata(dev_get_drvdata(dev->parent->parent));
 return snprintf(buf, PAGE_SIZE, "%d\n", kone->settings.tcu);
}
