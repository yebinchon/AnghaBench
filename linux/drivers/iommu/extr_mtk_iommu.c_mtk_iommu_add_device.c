
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_data {int iommu; } ;
struct iommu_group {int dummy; } ;
struct iommu_fwspec {struct mtk_iommu_data* iommu_priv; int * ops; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct iommu_group*) ;
 int PTR_ERR (struct iommu_group*) ;
 struct iommu_fwspec* dev_iommu_fwspec_get (struct device*) ;
 int iommu_device_link (int *,struct device*) ;
 struct iommu_group* iommu_group_get_for_dev (struct device*) ;
 int iommu_group_put (struct iommu_group*) ;
 int mtk_iommu_ops ;

__attribute__((used)) static int mtk_iommu_add_device(struct device *dev)
{
 struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 struct mtk_iommu_data *data;
 struct iommu_group *group;

 if (!fwspec || fwspec->ops != &mtk_iommu_ops)
  return -ENODEV;

 data = fwspec->iommu_priv;
 iommu_device_link(&data->iommu, dev);

 group = iommu_group_get_for_dev(dev);
 if (IS_ERR(group))
  return PTR_ERR(group);

 iommu_group_put(group);
 return 0;
}
