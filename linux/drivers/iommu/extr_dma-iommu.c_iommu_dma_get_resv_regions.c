
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int iommu_fwnode; } ;


 TYPE_1__* dev_iommu_fwspec_get (struct device*) ;
 int iort_iommu_msi_get_resv_regions (struct device*,struct list_head*) ;
 int is_of_node (int ) ;

void iommu_dma_get_resv_regions(struct device *dev, struct list_head *list)
{

 if (!is_of_node(dev_iommu_fwspec_get(dev)->iommu_fwnode))
  iort_iommu_msi_get_resv_regions(dev, list);

}
