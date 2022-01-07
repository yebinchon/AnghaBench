
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int of_node; } ;
typedef int ssize_t ;


 char* of_node_get_device_type (int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%s\n", of_node_get_device_type(dev->of_node));
}
