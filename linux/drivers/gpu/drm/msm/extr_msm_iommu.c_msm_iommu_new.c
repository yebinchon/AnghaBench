
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mmu {int dummy; } ;
struct msm_iommu {struct msm_mmu base; struct iommu_domain* domain; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct msm_mmu* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int funcs ;
 int iommu_set_fault_handler (struct iommu_domain*,int ,struct msm_iommu*) ;
 struct msm_iommu* kzalloc (int,int ) ;
 int msm_fault_handler ;
 int msm_mmu_init (struct msm_mmu*,struct device*,int *) ;

struct msm_mmu *msm_iommu_new(struct device *dev, struct iommu_domain *domain)
{
 struct msm_iommu *iommu;

 iommu = kzalloc(sizeof(*iommu), GFP_KERNEL);
 if (!iommu)
  return ERR_PTR(-ENOMEM);

 iommu->domain = domain;
 msm_mmu_init(&iommu->base, dev, &funcs);
 iommu_set_fault_handler(domain, msm_fault_handler, iommu);

 return &iommu->base;
}
