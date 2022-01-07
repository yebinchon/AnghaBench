
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dimm_info {int nr_pages; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGES_TO_MiB (int ) ;
 int sprintf (char*,char*,int) ;
 struct dimm_info* to_dimm (struct device*) ;

__attribute__((used)) static ssize_t dimmdev_size_show(struct device *dev,
     struct device_attribute *mattr, char *data)
{
 struct dimm_info *dimm = to_dimm(dev);

 return sprintf(data, "%u\n", PAGES_TO_MiB(dimm->nr_pages));
}
