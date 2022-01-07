
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dimm_info {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int edac_dimm_info_location (struct dimm_info*,char*,int ) ;
 struct dimm_info* to_dimm (struct device*) ;

__attribute__((used)) static ssize_t dimmdev_location_show(struct device *dev,
         struct device_attribute *mattr, char *data)
{
 struct dimm_info *dimm = to_dimm(dev);

 return edac_dimm_info_location(dimm, data, PAGE_SIZE);
}
