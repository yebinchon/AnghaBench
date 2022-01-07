
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dax_region {int res; } ;
typedef int ssize_t ;


 struct dax_region* dev_get_drvdata (struct device*) ;
 scalar_t__ resource_size (int *) ;
 int sprintf (char*,char*,unsigned long long) ;

__attribute__((used)) static ssize_t region_size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct dax_region *dax_region = dev_get_drvdata(dev);

 return sprintf(buf, "%llu\n", (unsigned long long)
   resource_size(&dax_region->res));
}
