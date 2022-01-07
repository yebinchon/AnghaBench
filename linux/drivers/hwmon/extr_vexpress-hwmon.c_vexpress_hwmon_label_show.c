
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int of_node; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 char* of_get_property (int ,char*,int *) ;
 int snprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t vexpress_hwmon_label_show(struct device *dev,
  struct device_attribute *dev_attr, char *buffer)
{
 const char *label = of_get_property(dev->of_node, "label", ((void*)0));

 return snprintf(buffer, PAGE_SIZE, "%s\n", label);
}
