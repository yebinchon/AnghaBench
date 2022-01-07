
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_control {int vendor_string; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct gb_control* to_gb_control (struct device*) ;

__attribute__((used)) static ssize_t vendor_string_show(struct device *dev,
      struct device_attribute *attr, char *buf)
{
 struct gb_control *control = to_gb_control(dev);

 return scnprintf(buf, PAGE_SIZE, "%s\n", control->vendor_string);
}
