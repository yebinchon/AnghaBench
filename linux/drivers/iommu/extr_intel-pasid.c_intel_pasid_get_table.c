
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pasid_table {int dummy; } ;
struct device_domain_info {struct pasid_table* pasid_table; } ;
struct TYPE_2__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;



struct pasid_table *intel_pasid_get_table(struct device *dev)
{
 struct device_domain_info *info;

 info = dev->archdata.iommu;
 if (!info)
  return ((void*)0);

 return info->pasid_table;
}
