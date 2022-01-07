
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kovaplus_device {int actual_y_sensitivity; } ;
struct device_attribute {int dummy; } ;
struct device {TYPE_1__* parent; } ;
typedef int ssize_t ;
struct TYPE_2__ {int parent; } ;


 int PAGE_SIZE ;
 int dev_get_drvdata (int ) ;
 struct kovaplus_device* hid_get_drvdata (int ) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t kovaplus_sysfs_show_actual_sensitivity_y(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct kovaplus_device *kovaplus =
   hid_get_drvdata(dev_get_drvdata(dev->parent->parent));
 return snprintf(buf, PAGE_SIZE, "%d\n", kovaplus->actual_y_sensitivity);
}
