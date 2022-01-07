
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* gb_interface_type_string (struct gb_interface*) ;
 int sprintf (char*,char*,char*) ;
 struct gb_interface* to_gb_interface (struct device*) ;

__attribute__((used)) static ssize_t interface_type_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct gb_interface *intf = to_gb_interface(dev);

 return sprintf(buf, "%s\n", gb_interface_type_string(intf));
}
