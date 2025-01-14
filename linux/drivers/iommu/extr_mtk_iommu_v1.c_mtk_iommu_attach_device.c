
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_iommu_domain {int dummy; } ;
struct mtk_iommu_data {struct mtk_iommu_domain* m4u_dom; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct mtk_iommu_data* iommu_priv; } ;


 int ENODEV ;
 TYPE_1__* dev_iommu_fwspec_get (struct device*) ;
 int mtk_iommu_config (struct mtk_iommu_data*,struct device*,int) ;
 int mtk_iommu_domain_finalise (struct mtk_iommu_data*) ;
 struct mtk_iommu_domain* to_mtk_domain (struct iommu_domain*) ;

__attribute__((used)) static int mtk_iommu_attach_device(struct iommu_domain *domain,
       struct device *dev)
{
 struct mtk_iommu_domain *dom = to_mtk_domain(domain);
 struct mtk_iommu_data *data = dev_iommu_fwspec_get(dev)->iommu_priv;
 int ret;

 if (!data)
  return -ENODEV;

 if (!data->m4u_dom) {
  data->m4u_dom = dom;
  ret = mtk_iommu_domain_finalise(data);
  if (ret) {
   data->m4u_dom = ((void*)0);
   return ret;
  }
 }

 mtk_iommu_config(data, dev, 1);
 return 0;
}
