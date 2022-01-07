
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmmu_vmsa_domain {TYPE_1__* iop; } ;
struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* iova_to_phys ) (TYPE_1__*,int ) ;} ;


 int stub1 (TYPE_1__*,int ) ;
 struct ipmmu_vmsa_domain* to_vmsa_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t ipmmu_iova_to_phys(struct iommu_domain *io_domain,
          dma_addr_t iova)
{
 struct ipmmu_vmsa_domain *domain = to_vmsa_domain(io_domain);



 return domain->iop->iova_to_phys(domain->iop, iova);
}
