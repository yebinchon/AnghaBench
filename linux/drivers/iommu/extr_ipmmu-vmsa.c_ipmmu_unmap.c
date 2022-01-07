
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmmu_vmsa_domain {TYPE_1__* iop; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {size_t (* unmap ) (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ;} ;


 size_t stub1 (TYPE_1__*,unsigned long,size_t,struct iommu_iotlb_gather*) ;
 struct ipmmu_vmsa_domain* to_vmsa_domain (struct iommu_domain*) ;

__attribute__((used)) static size_t ipmmu_unmap(struct iommu_domain *io_domain, unsigned long iova,
     size_t size, struct iommu_iotlb_gather *gather)
{
 struct ipmmu_vmsa_domain *domain = to_vmsa_domain(io_domain);

 return domain->iop->unmap(domain->iop, iova, size, gather);
}
