
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {scalar_t__ active; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*) ;
 struct gb_interface* to_gb_interface (struct device*) ;

__attribute__((used)) static ssize_t power_state_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct gb_interface *intf = to_gb_interface(dev);

 if (intf->active)
  return scnprintf(buf, PAGE_SIZE, "on\n");
 else
  return scnprintf(buf, PAGE_SIZE, "off\n");
}
