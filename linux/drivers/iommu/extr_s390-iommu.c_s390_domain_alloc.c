
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct s390_domain {struct iommu_domain domain; int devices; int list_lock; int dma_table_lock; int dma_table; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 int dma_alloc_cpu_table () ;
 int kfree (struct s390_domain*) ;
 struct s390_domain* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iommu_domain *s390_domain_alloc(unsigned domain_type)
{
 struct s390_domain *s390_domain;

 if (domain_type != IOMMU_DOMAIN_UNMANAGED)
  return ((void*)0);

 s390_domain = kzalloc(sizeof(*s390_domain), GFP_KERNEL);
 if (!s390_domain)
  return ((void*)0);

 s390_domain->dma_table = dma_alloc_cpu_table();
 if (!s390_domain->dma_table) {
  kfree(s390_domain);
  return ((void*)0);
 }

 spin_lock_init(&s390_domain->dma_table_lock);
 spin_lock_init(&s390_domain->list_lock);
 INIT_LIST_HEAD(&s390_domain->devices);

 return &s390_domain->domain;
}
