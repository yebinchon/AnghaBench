
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dev_dax {int dummy; } ;
typedef int ssize_t ;


 int dev_dax_resource (struct dev_dax*) ;
 int sprintf (char*,char*,int ) ;
 struct dev_dax* to_dev_dax (struct device*) ;

__attribute__((used)) static ssize_t resource_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct dev_dax *dev_dax = to_dev_dax(dev);

 return sprintf(buf, "%#llx\n", dev_dax_resource(dev_dax));
}
