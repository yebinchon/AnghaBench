
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_domain_info {TYPE_2__* pasid_table; } ;
struct TYPE_3__ {struct device_domain_info* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct TYPE_4__ {int max_pasid; } ;



int intel_pasid_get_dev_max_id(struct device *dev)
{
 struct device_domain_info *info;

 info = dev->archdata.iommu;
 if (!info || !info->pasid_table)
  return 0;

 return info->pasid_table->max_pasid;
}
