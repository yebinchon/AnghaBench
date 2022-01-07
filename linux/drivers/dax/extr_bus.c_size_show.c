
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dev_dax {TYPE_1__* region; } ;
typedef int ssize_t ;
struct TYPE_2__ {int res; } ;


 unsigned long long resource_size (int *) ;
 int sprintf (char*,char*,unsigned long long) ;
 struct dev_dax* to_dev_dax (struct device*) ;

__attribute__((used)) static ssize_t size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct dev_dax *dev_dax = to_dev_dax(dev);
 unsigned long long size = resource_size(&dev_dax->region->res);

 return sprintf(buf, "%llu\n", size);
}
