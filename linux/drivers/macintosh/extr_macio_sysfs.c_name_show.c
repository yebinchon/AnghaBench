
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int of_node; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t name_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 return sprintf(buf, "%pOFn\n", dev->of_node);
}
