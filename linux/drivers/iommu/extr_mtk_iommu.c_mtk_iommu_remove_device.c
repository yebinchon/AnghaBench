
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_data {int iommu; } ;
struct iommu_fwspec {struct mtk_iommu_data* iommu_priv; int * ops; } ;
struct device {int dummy; } ;


 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int iommu_device_unlink (int *,struct device*) ;
 int iommu_fwspec_free (struct device*) ;
 int iommu_group_remove_device (struct device*) ;
 int mtk_iommu_ops ;

__attribute__((used)) static void mtk_iommu_remove_device(struct device *dev)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 struct mtk_iommu_data *data;

 if (!fwspec || fwspec->ops != &mtk_iommu_ops)
  return;

 data = fwspec->iommu_priv;
 iommu_device_unlink(&data->iommu, dev);

 iommu_group_remove_device(dev);
 iommu_fwspec_free(dev);
}
