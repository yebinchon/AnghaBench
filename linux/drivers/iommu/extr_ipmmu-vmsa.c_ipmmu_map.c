
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmmu_vmsa_domain {TYPE_1__* iop; } ;
struct iommu_domain {int dummy; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* map ) (TYPE_1__*,unsigned long,int ,size_t,int) ;} ;


 int ENODEV ;
 int stub1 (TYPE_1__*,unsigned long,int ,size_t,int) ;
 struct ipmmu_vmsa_domain* to_vmsa_domain (struct iommu_domain*) ;

__attribute__((used)) static int ipmmu_map(struct iommu_domain *io_domain, unsigned long iova,
       phys_addr_t paddr, size_t size, int prot)
{
 struct ipmmu_vmsa_domain *domain = to_vmsa_domain(io_domain);

 if (!domain)
  return -ENODEV;

 return domain->iop->map(domain->iop, iova, paddr, size, prot);
}
