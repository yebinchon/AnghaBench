
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_domain {int iop; } ;
struct iommu_domain {int dummy; } ;


 int free_io_pgtable_ops (int ) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int ipmmu_domain_destroy_context (struct ipmmu_vmsa_domain*) ;
 int kfree (struct ipmmu_vmsa_domain*) ;
 struct ipmmu_vmsa_domain* to_vmsa_domain (struct iommu_domain*) ;

__attribute__((used)) static void ipmmu_domain_free(struct iommu_domain *io_domain)
{
 struct ipmmu_vmsa_domain *domain = to_vmsa_domain(io_domain);





 iommu_put_dma_cookie(io_domain);
 ipmmu_domain_destroy_context(domain);
 free_io_pgtable_ops(domain->iop);
 kfree(domain);
}
