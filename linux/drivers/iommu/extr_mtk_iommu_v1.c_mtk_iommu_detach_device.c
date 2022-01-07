
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_iommu_data {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct mtk_iommu_data* iommu_priv; } ;


 TYPE_1__* dev_iommu_fwspec_get (struct device*) ;
 int mtk_iommu_config (struct mtk_iommu_data*,struct device*,int) ;

__attribute__((used)) static void mtk_iommu_detach_device(struct iommu_domain *domain,
        struct device *dev)
{
 struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;

 if (!data)
  return;

 mtk_iommu_config(data, dev, 0);
}
