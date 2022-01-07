
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_iommu_arch_data {TYPE_2__* iommu_dev; } ;
struct iommu_group {int dummy; } ;
struct TYPE_3__ {struct omap_iommu_arch_data* iommu; } ;
struct device {TYPE_1__ archdata; } ;
struct TYPE_4__ {int group; } ;


 int EINVAL ;
 struct iommu_group* ERR_PTR (int ) ;
 struct iommu_group* iommu_group_ref_get (int ) ;

__attribute__((used)) static struct iommu_group *omap_iommu_device_group(struct device *dev)
{
 struct omap_iommu_arch_data *arch_data = dev->archdata.iommu;
 struct iommu_group *group = ERR_PTR(-EINVAL);

 if (arch_data->iommu_dev)
  group = iommu_group_ref_get(arch_data->iommu_dev->group);

 return group;
}
