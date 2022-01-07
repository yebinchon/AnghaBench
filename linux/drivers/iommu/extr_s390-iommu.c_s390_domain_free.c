
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s390_domain {int dma_table; } ;
struct iommu_domain {int dummy; } ;


 int dma_cleanup_tables (int ) ;
 int kfree (struct s390_domain*) ;
 struct s390_domain* to_s390_domain (struct iommu_domain*) ;

__attribute__((used)) static void s390_domain_free(struct iommu_domain *domain)
{
 struct s390_domain *s390_domain = to_s390_domain(domain);

 dma_cleanup_tables(s390_domain->dma_table);
 kfree(s390_domain);
}
