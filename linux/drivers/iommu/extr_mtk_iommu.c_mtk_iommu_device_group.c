
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_iommu_data {struct iommu_group* m4u_group; } ;
struct iommu_group {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 struct iommu_group* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct iommu_group*) ;
 int dev_err (struct device*,char*) ;
 struct iommu_group* iommu_group_alloc () ;
 int iommu_group_ref_get (struct iommu_group*) ;
 struct mtk_iommu_data* mtk_iommu_get_m4u_data () ;

__attribute__((used)) static struct iommu_group *mtk_iommu_device_group(struct device *dev)
{
 struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();

 if (!data)
  return ERR_PTR(-ENODEV);


 if (!data->m4u_group) {
  data->m4u_group = iommu_group_alloc();
  if (IS_ERR(data->m4u_group))
   dev_err(dev, "Failed to allocate M4U IOMMU group\n");
 } else {
  iommu_group_ref_get(data->m4u_group);
 }
 return data->m4u_group;
}
