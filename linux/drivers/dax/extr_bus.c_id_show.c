
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct dax_region {int id; } ;
typedef int ssize_t ;


 struct dax_region* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t id_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct dax_region *dax_region = dev_get_drvdata(dev);

 return sprintf(buf, "%d\n", dax_region->id);
}
