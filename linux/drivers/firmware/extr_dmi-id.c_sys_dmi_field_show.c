
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int field; } ;


 int PAGE_SIZE ;
 int dmi_get_system_info (int) ;
 int scnprintf (char*,int ,char*,int ) ;
 TYPE_1__* to_dmi_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t sys_dmi_field_show(struct device *dev,
      struct device_attribute *attr,
      char *page)
{
 int field = to_dmi_dev_attr(attr)->field;
 ssize_t len;
 len = scnprintf(page, PAGE_SIZE, "%s\n", dmi_get_system_info(field));
 page[len-1] = '\n';
 return len;
}
