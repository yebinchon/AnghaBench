
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_iommu_arch_data {scalar_t__ iommu_dev; } ;
struct TYPE_2__ {struct omap_iommu_arch_data* iommu; } ;
struct device {TYPE_1__ archdata; } ;



__attribute__((used)) static int omap_iommu_count(struct device *dev)
{
 struct omap_iommu_arch_data *arch_data = dev->archdata.iommu;
 int count = 0;

 while (arch_data->iommu_dev) {
  count++;
  arch_data++;
 }

 return count;
}
