
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_iommu_arch_data {TYPE_1__* iommu_dev; } ;
struct TYPE_4__ {struct omap_iommu_arch_data* iommu; } ;
struct device {TYPE_2__ archdata; int of_node; } ;
struct TYPE_3__ {int iommu; } ;


 int iommu_device_unlink (int *,struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 int kfree (struct omap_iommu_arch_data*) ;

__attribute__((used)) static void omap_iommu_remove_device(struct device *dev)
{
 struct omap_iommu_arch_data *arch_data = dev->archdata.iommu;

 if (!dev->of_node || !arch_data)
  return;

 iommu_device_unlink(&arch_data->iommu_dev->iommu, dev);
 iommu_group_remove_device(dev);

 dev->archdata.iommu = ((void*)0);
 kfree(arch_data);

}
