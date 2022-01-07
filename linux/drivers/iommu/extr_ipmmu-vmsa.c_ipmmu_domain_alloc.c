
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;




 struct iommu_domain* __ipmmu_domain_alloc (unsigned int) ;
 int iommu_get_dma_cookie (struct iommu_domain*) ;
 int kfree (struct iommu_domain*) ;

__attribute__((used)) static struct iommu_domain *ipmmu_domain_alloc(unsigned type)
{
 struct iommu_domain *io_domain = ((void*)0);

 switch (type) {
 case 128:
  io_domain = __ipmmu_domain_alloc(type);
  break;

 case 129:
  io_domain = __ipmmu_domain_alloc(type);
  if (io_domain && iommu_get_dma_cookie(io_domain)) {
   kfree(io_domain);
   io_domain = ((void*)0);
  }
  break;
 }

 return io_domain;
}
