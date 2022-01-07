
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
struct arvo_device {int actual_profile; } ;
typedef int ssize_t ;
struct TYPE_2__ {int parent; } ;


 int PAGE_SIZE ;
 int dev_get_drvdata (int ) ;
 struct arvo_device* hid_get_drvdata (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t arvo_sysfs_show_actual_profile(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct arvo_device *arvo =
   hid_get_drvdata(dev_get_drvdata(dev->parent->parent));

 return snprintf(buf, PAGE_SIZE, "%d\n", arvo->actual_profile);
}
