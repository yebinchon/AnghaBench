
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dimm_info {size_t mtype; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char** edac_mem_types ;
 int sprintf (char*,char*,char*) ;
 struct dimm_info* to_dimm (struct device*) ;

__attribute__((used)) static ssize_t dimmdev_mem_type_show(struct device *dev,
         struct device_attribute *mattr, char *data)
{
 struct dimm_info *dimm = to_dimm(dev);

 return sprintf(data, "%s\n", edac_mem_types[dimm->mtype]);
}
