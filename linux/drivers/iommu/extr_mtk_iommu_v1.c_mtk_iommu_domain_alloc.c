
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct mtk_iommu_domain {struct iommu_domain domain; } ;


 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 struct mtk_iommu_domain* kzalloc (int,int ) ;

__attribute__((used)) static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
{
 struct mtk_iommu_domain *dom;

 if (type != IOMMU_DOMAIN_UNMANAGED)
  return ((void*)0);

 dom = kzalloc(sizeof(*dom), GFP_KERNEL);
 if (!dom)
  return ((void*)0);

 return &dom->domain;
}
