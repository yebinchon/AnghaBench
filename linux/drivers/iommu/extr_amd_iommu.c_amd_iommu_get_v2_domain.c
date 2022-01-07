
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct protection_domain {int flags; struct iommu_domain domain; } ;
struct pci_dev {int dev; } ;


 scalar_t__ IS_ERR (struct protection_domain*) ;
 int PD_IOMMUV2_MASK ;
 struct protection_domain* get_domain (int *) ;

struct iommu_domain *amd_iommu_get_v2_domain(struct pci_dev *pdev)
{
 struct protection_domain *pdomain;

 pdomain = get_domain(&pdev->dev);
 if (IS_ERR(pdomain))
  return ((void*)0);


 if (!(pdomain->flags & PD_IOMMUV2_MASK))
  return ((void*)0);

 return &pdomain->domain;
}
